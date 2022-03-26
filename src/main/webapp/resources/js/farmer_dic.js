 jQuery(document).ready(function () {

            let product = {
                url: './img/1.jpg',
                cate: 'C | R | U | D',
                title: '구현전입니다.',
                like: '1,000'
            }
            let product2 = {
                url: './img/1.jpg',
                cate: 'C | R | U | D',
                title: '구현전입니다.',
                like: '2,000'
            }

            let data = [product,product2,product,product2,product,product2,product,product2];            


            const ul = document.querySelector('.community>ul');
            console.log(ul);
            data.forEach((item,index)=>{
                const keys = Object.keys(item);
                console.log(keys);
                const li = document.createElement('li');
                const a = document.createElement('a');
                a.setAttribute('href','./farmer_info.do')

                for(let i =0; i<keys.length; i++){
                    const keyName = keys[i];
                    // console.log(keyName);
                    const value = item[keyName];
                    // console.log(value);

                    
                    const text = document.createTextNode(value);
                    const div = document.createElement('div');
                    

                    if(keyName === 'url'){
                        const img = document.createElement('img');
                        img.setAttribute('src',value);
                        img.setAttribute('class','productimg');
                        div.appendChild(img);
                    } else if(keyName === 'cate'){
                        const span = document.createElement('span');
                        const text = document.createTextNode(value);
                        span.appendChild(text);
                        span.setAttribute('class','productminicate');
                        div.appendChild(span);
                    } else if(keyName === 'title'){
                        const span = document.createElement('span');
                        const text = document.createTextNode(value);
                        span.appendChild(text);
                        span.setAttribute('class','producttitle');
                        div.appendChild(span);
                    } else if(keyName === 'like'){
                        const span = document.createElement('span');
                        const text = document.createTextNode(value+'🧡');
                        span.appendChild(text);
                        span.setAttribute('class','productlike');
                        div.appendChild(span);
                    }

                    li.appendChild(div);
                    a.appendChild(li);
                    // console.log(a);
                }
                ul.appendChild(a);
            })



            $('input[type="search"]').on('keyup', function (evt) {
                // console.log('keyup');
                // console.log(evt.keyCode);
                const data = $('input[type="search"]').val();

                if (evt.keyCode == 13) {
                    $('#searchword').html('<span>' + data + '</span>');
                }
                $('#searchword').value = '';
            })

            $('li[name^="list"]').on('click', function (e) {
                $('#searchword').html('<div>' + this.innerText + '</div>');
            })
        })