<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Chatbot in PHP | by XBanTs</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="jquery-3.7.1.min.js"></script>
    <style>
        body {
            background-image: url("chatbot_img.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="title">Simple Online Chatbot</div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>Hello there, how can I <br> help you?</p>
                </div>
            </div> 
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Ask me anything..." required>
                <button id="send-btn">Send</button>
            </div>
        </div>
    </div>
    <h4 style="color:#f0f;">Developed by AyoMide "XBanTs" Oyewo</h4>

    <script>
       $(document).ready(function(){
           $("#send-btn").on("click", function(){
            $value = $("#data").val();
             $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
             $(".form").append($msg);
             $("#data").val('');
             
            //  start ajax code
            $.ajax({
                url: 'message.php',
                type: 'POST',
                data: 'text='+$value,
                success: function(result){
                     $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>' + result + '</p></div></div>';
                     $(".form").append($replay);
                    //  when chat goes down the scroll bar automatically comes to the bottom
                    $(".form").scrollTop($(".form")[0].scrollHeight);
                }
            });
           });
       });
    </script>
    
</body>
</html>