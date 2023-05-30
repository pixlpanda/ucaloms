$(document).ready(function(){
    $('#btnRegister').click(function(e){
        e.preventDefault();
        $.ajax({
            url: $(location).attr('origin') + '/auth/register',
            type: 'post',
            dataType: 'json',
            data: $('#formRegister').serialize(),
            success: function(data){
                if (data.status == 'success') {
                    $('#formRegister').each(function(){
                        this.reset();
                    });
                    const actionMessage = document.getElementById('actionMessage');
                    actionMessage.className = '';    
                    $('#actionMessage').addClass('alert alert-success alert-dismissible').html('<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button><strong><i class="fas fa-exclamation-triangle"></i>Registered Successfully!</strong> Kindly login and complete the company profile.</li></ul>');
                } else {
                    alert('failed');
                }
            }
        });
    });
});


$('#btnLogin').click(function(e){
    e.preventDefault();
    $.ajax({
        url: $(location).attr('origin') + '/auth/login',
        type: 'post',
        dataType: 'json',
        data: $('#formLogin').serialize(),
        success: function(data){
            if (data.status == 'success') {
                $('#formLogin').each(function(){
                    this.reset();
                });
                if (data.comp_name === "") {
                    window.location = $(location).attr('origin')+'/accounts/addProfileDetails';
                }
            } else {
                alert('failed');
            }
        }
    });
});

$('#logout').click(function(e){
    e.preventDefault();
    $.ajax({
        url: $(location).attr('origin') + '/auth/logout',
        dataType: 'json',
        success: function(data){
            if (data.status == 'success') {
                window.location.href = $(location).attr('origin')+'/auth';
            }
        }
    });
});

$('#updateDetails').click(function(e){
    e.preventDefault();
    var companyName = $('#companyName').val();

    $.ajax({
        url: $(location).attr('origin')+'/accounts/updateUserDetails',
        type: 'post',
        dataType : 'json',
        data: $('#userForm').serialize(),
        success: function(data){
            if (data.status == 'success'){
                
                $.ajax({
                    url: $(location).attr('origin')+'/accounts/addProfileDetails',
                    type: 'GET',
                    dataType: 'html',
                    success: function(response) {
                      var leftcontent = $(response).find('#pageUpdater').html();
                      $('#pageUpdater').html(leftcontent);
                      $('#myElement').text();
                    },
                    error: function(xhr, status, error) {
                      // Handle error if necessary
                    }
                  });


            }else{
                console.log(data.comp_name);
            }
        }
    })
});