console.log("myLike Module.........");
 
const interestButton = document.querySelector('.Category_selectedCategory');
const interestList = document.getElementById('interest-list');

const readButton = document.querySelector('.Category_categoryItem:not(.Category_selectedCategory)');
const readList = document.getElementById('read-list');

showInterestList();

interestList.style.display = 'block';
readList.style.display = 'none';

readButton.addEventListener('click', () => {
    interestButton.classList.remove('Category_selectedCategory');
    readButton.classList.add('Category_selectedCategory');
    
    interestList.style.display = 'none';
    readList.style.display = 'block';
    
    $.ajax({
        type: 'GET',
        url: '/user/read',
        success: function(data) {
            $("#read-list").html(data);
        },
        error: function() {
            alert("읽은 글 목록을 가져오는 중 오류가 발생했습니다.");
        }
    });
});

interestButton.addEventListener('click', showInterestList);

function showInterestList() {
    readButton.classList.remove('Category_selectedCategory');
    interestButton.classList.add('Category_selectedCategory');
    
    interestList.style.display = 'block';
    readList.style.display = 'none';
    
    $.ajax({
        type: 'GET',
        url: '/user/interest',
        success: function(data) {
            $("#interest-list").html(data);
        },
        error: function() {
            alert("관심 글 목록을 가져오는 중 오류가 발생했습니다.");
        }
    });
}