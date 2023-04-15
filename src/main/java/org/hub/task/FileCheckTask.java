package org.hub.task;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

import org.hub.domain.UserAttachVO;
import org.hub.mapper.UserAttachMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class FileCheckTask {
	
	@Autowired
	private UserAttachMapper attachMapper;
	
	private String getFolderYesterDay() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar cal = Calendar.getInstance();
		
		cal.add(Calendar.DATE, -1);
		
		String str = sdf.format(cal.getTime());
		
		return str.replace("-", File.separator);
	}
	
	@Scheduled(cron="0 0 2 * * *")
	public void checkFiles() throws Exception{
		// Scheduled 어노테이션 내에 cron 속성을 부여해 주기를 제어
		// 매일 새벽 2시에 동작
		log.warn("File Check Task run  . . . . . ");
		log.warn("= = = = = = = = = = = = = = = = ");
		
		// 어제 날짜로 보관된 파일 목록 in DB
		List<UserAttachVO> fileList = attachMapper.getOldFiles();
		
		// ready for check file in directory with DB file list
		// 나중에 비교를 위해 java.nio.Paths의 목록으로 변환해 변수 fileListPaths 에 모은다
		List<Path> fileListPaths = fileList.stream()
				.map(vo -> Paths.get("C:\\upload", vo.getUploadPath(),
						vo.getUuid() + "_" + vo.getFileName()))
				.collect(Collectors.toList());
		
		// 섬네일 파일도 목록에 필요
		fileList.stream().filter(vo->vo.isFileType() == true)
		.map(vo->Paths.get("C:\\upload", vo.getUploadPath(), "s_" + vo.getUuid() + "_" + vo.getFileName()))
		.forEach(p->fileListPaths.add(p));

		log.warn(" = = = = = = = = = = = = = = = = = = ");
		
		fileListPaths.forEach(p->log.warn(p));
		
		// files in 어제 directory
		File targetDir = Paths.get("C:\\upload", getFolderYesterDay()).toFile();
		
		// 제거할 파일목록 = upload 폴더에는 있으나 DB에는 없는 파일들
		File[] removeFiles = targetDir.listFiles(file -> fileListPaths.contains(file.toPath()) == false);
		
		log.warn(" - - - - - - - - - - - - - - - - - - - ");
		for(File file : removeFiles) {
			log.warn(file.getAbsolutePath());
			file.delete();	
		}
	}
	
	
	
	
}
