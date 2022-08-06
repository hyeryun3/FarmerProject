jQuery(document).ready(function () {
    let qnaSize;
    const data_qna = [];
    let tbody_qna = document.querySelector('.board_table_qna #tbody');
    let tempCnt=0;

    $('.board_table_qna > button').on('click', function (evt) {
        location.assign('./boardform.do');
    })
    if(tempCnt==0){
        $.ajax({
            type: "POST",
            url: "listQna.do",
            dataType: "json",
            success: function (data) {
                qnaSize = data.listBoard.length
                console.log("data.listBoard",data.listBoard)
                for (let i = 0; i < qnaSize; i++) {
                    data_qna.push(data.listBoard[i]);
                }
                for (i = 0; i < qnaSize; i++) {
                    let tr = document.createElement('tr');
                    let idx = document.createElement('td')
                    let title = document.createElement('td');
                    let author = document.createElement('td');
                    let writeDate = document.createElement('td');
                    let text = document.createTextNode(i+1);
                    let a = document.createElement('a');
                    // a.setAttribute('href','boardDetail/'+(i+1))
                    // a.appendChild(text)
                    idx.appendChild(text)

                    text = document.createTextNode(data_qna[i].title);
                    a.setAttribute('href','boardDetail/'+(data_qna[i].id))
                    a.appendChild(text)
                    title.appendChild(a)
                    // title.appendChild(text);

                    text = document.createTextNode(data_qna[i].author);
                    author.appendChild(text);

                    text = document.createTextNode(data_qna[i].writeDate)
                    writeDate.appendChild(text)

                    tr.appendChild(idx);
                    tr.appendChild(title);
                    tr.appendChild(author);
                    tr.appendChild(writeDate);
                    tbody_qna.appendChild(tr);

                }
                tempCnt++

            },
            error: function (request, status, error){
                console.log("code: " + request.status)
                console.log("message: " + request.responseText)
                console.log("error: " + error);
            }
        })
    }

    /*$('h3[name^="board_"]').click(function () {

        if (this.getAttribute('name') === 'board_notice') {
            document.querySelector('.board_table_notice').style.display = 'block';
            document.querySelector('.board_table_qna').style.display = 'none';
        } else if (this.getAttribute('name') === 'board_user') {
            document.querySelector('.board_table_qna').style.display = 'block';
            document.querySelector('.board_table_notice').style.display = 'none';
        }


    })*/


})


