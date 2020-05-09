$(document).ready(function(){
 $('.delete_student').click(function(e){
  e.preventDefault();
  var studentid = $(this).attr('data-student-id');
  var parent = $(this).parent("td").parent("tr");
  bootbox.dialog({
   message: "Are you sure you want to Delete ?",
   title: "<i class='glyphicon glyphicon-trash'></i> Delete !",
   buttons: {
    success: {
     label: "No",
     className: "btn-success",
     callback: function() {
      $('.bootbox').modal('hide');
      }
      },
      danger: {
       label: "Delete!",
       className: "btn-danger",
       callback: function() {
        $.ajax({
         type: 'POST',
         url: 'deleterecord.php',
         data: 'delete='+studentid
        })
        .done(function(response){
         bootbox.alert(response);
         parent.fadeOut('slow');
        })
        .fail(function(){
         bootbox.alert('Error....');
         })
       }
      }
    }
  });
 });
});