 jQuery(document).ready(function () {
            
            $('input[type="search"]').on('keyup', function (evt) {
                const data = $('input[type="search"]').val();

                if (evt.keyCode == 13) {
                    location.assign('./search.do')
                }
            })
})