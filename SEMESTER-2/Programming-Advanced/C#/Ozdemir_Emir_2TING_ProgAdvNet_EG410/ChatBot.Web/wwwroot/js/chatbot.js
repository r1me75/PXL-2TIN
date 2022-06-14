$(function () {
    var $chatMessageInput = $('#chatMessageInput');
    var $sendButton = $('#sendButton');
    var $messageBoard = $('#messageBoard');

    var chatBotApiUrl = '/api/chatbot';

    $sendButton.click(function () {
        $chatMessageInput.prop('disabled', true);
        $sendButton.prop('disabled', true);

        var message = $chatMessageInput.val();
        $chatMessageInput.val('');

        //Add message to board
        $messageBoard.append(createMessageHtml(message, true));

        //Get answer from bot
        $.ajax({
            dataType: "json",
            type: "POST",
            url: chatBotApiUrl,
            contentType: "application/json",
            data: JSON.stringify({ 'question': message }),
            success: function (result) {
                $messageBoard.append(createMessageHtml(result.answer, false));
            },
            error: function (response) {
                var errorMessage = '';
                if (response.status === 400) {
                    errorMessage = response.responseText;
                } else {
                    errorMessage = 'Web API Error.<br />' + response.status + ' ' + response.statusText + '.<br /><br /> ' + response.responseText;
                }
                $messageBoard.append(createMessageHtml(errorMessage, false, true));
            },
            complete: function () {
                $chatMessageInput.prop('disabled', false);
                $sendButton.prop('disabled', false);
            }
        });

    });

    function createMessageHtml(message, isHuman, isError = false) {
        var offset = isHuman ? '0' : '4';
        var cssClass = isHuman ? 'alert alert-success' : 'alert alert-info';
        if (isError) {
            cssClass = 'alert alert-danger';
        }
        return '<div class="row"><div class="col-sm-8 col-sm-offset-' + offset + '"><div class="' + cssClass + '">' + message + '</div></div></div>';
    }
});