jQuery(document).ready(function () {
    let qnaSize;
    const data_qna = [];
    let tbody_qna = document.querySelector('.board_table_qna #tbody');
    let tempCnt=0;

    $('.board_table_qna > button').on('click', function (evt) {
        location.assign('./boardform.do');
    })

    $('h3[name^="board_"]').click(function () {

        if (this.getAttribute('name') === 'board_notice') {
            document.querySelector('.board_table_notice').style.display = 'block';
            document.querySelector('.board_table_qna').style.display = 'none';
        } else if (this.getAttribute('name') === 'board_qna') {
            document.querySelector('.board_table_qna').style.display = 'block';
            document.querySelector('.board_table_notice').style.display = 'none';
        }

        if(tempCnt==0){
            $.ajax({
            type: "POST",
            url: "listQna.do",
            dataType: "json",
            success: function (data) {
                qnaSize = data.listQna.length
                for (let i = 0; i < qnaSize; i++) {
                    data_qna.push(data.listQna[i]);
                    console.log(data_qna[i].writeDate)
                    console.log(Object.values(data_qna[i].writeDate))
                    // console.log(data_qna[i].writeDate.getKey("dayOfYear"))

                }
                for (i = 0; i < qnaSize; i++) {
                    let tr = document.createElement('tr');
                    let idx = document.createElement('td')
                    let title = document.createElement('td');
                    let author = document.createElement('td');
                    let writeDate = document.createElement('td');
                    let text = document.createTextNode(i+1);
                    idx.appendChild(text)

                    text = document.createTextNode(data_qna[i].title);
                    title.appendChild(text);

                    text = document.createTextNode(data_qna[i].userId);
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

            }
        })
        }
    })


})


