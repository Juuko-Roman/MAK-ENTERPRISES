  $("img").click(function(){
      alert("clicked");
 });

$(".liked").click(function(){
     $pid=$(this).data('value');
     $post=$(this);
     $(this).toggleClass("fa-thumbs-down");
     if($(this).hasClass("fa-thumbs-down")){
      $.post('likeIncrease',{pid:$pid},
      function(response)
      {
          $post.parent().find('span.likesCount').text(response + " likes");
      });
        
     }
     else{
      $.post('likeDecrease',{pid:$pid},
      function(response)
      {
          $post.parent().find('span.likesCount').text(response + " likes");
      });
     }
 });
 
