 jQuery(document).ready(function () {
           
            $('.board_table_qna > button').on('click', function (evt) {
                location.assign('./boardform.do');
            })
            
            $('h3[name^="board_"]').click(function () {
				console.log('클릭클릭');
                if (this.getAttribute('name') === 'board_notice') {
                    document.querySelector('.board_table_notice').style.display = 'block';
                    document.querySelector('.board_table_qna').style.display = 'none';
                } else if (this.getAttribute('name') === 'board_qna') {
                    document.querySelector('.board_table_qna').style.display = 'block';
                    document.querySelector('.board_table_notice').style.display = 'none';
                }
            })
            


            let notice = {
                No: 1,
                title: '공지사항 CRUD구현전 입니다.',
                aut: '프론트만 되어 있습니다.',
                date: new Date().toLocaleDateString()
            }
            let qna = {
                No: 1,
                title: 'Q&A CRUD구현전 입니다.',
                aut: '프론트만 되어 있습니다.',
                date: new Date().toLocaleDateString()
            }
            

            
            const data_notice = [];
            const data_qna = [];
            for (let i = 0; i < 10; i++) {
                data_notice.push(notice);
                data_qna.push(qna);
            }
            
            let tbody_notice = document.querySelector('.board_table_notice #tbody');
            let tbody_qna = document.querySelector('.board_table_qna #tbody');

            data_notice.forEach((item, index) => {
                const keys = Object.keys(item);
                // console.log(keys);
                const tr = document.createElement('tr');

                for (let i = 0; i < keys.length; i++) {
                    const keyName = keys[i];
                    // console.log(keyName);
                    const value = item[keyName];
                    // console.log(value);

                    const td = document.createElement('td');
                    const text = document.createTextNode(value);

                    td.appendChild(text);
                    tr.appendChild(td);
                }
                tbody_notice.appendChild(tr);
            })
            data_qna.forEach((item, index) => {
                const keys = Object.keys(item);
                // console.log(keys);
                const tr = document.createElement('tr');

                for (let i = 0; i < keys.length; i++) {
                    const keyName = keys[i];
                    // console.log(keyName);
                    const value = item[keyName];
                    // console.log(value);

                    const td = document.createElement('td');
                    const text = document.createTextNode(value);

                    td.appendChild(text);
                    tr.appendChild(td);
                }
                tbody_qna.appendChild(tr);
            })
        })


