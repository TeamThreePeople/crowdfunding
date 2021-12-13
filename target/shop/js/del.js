$('#del').click(function() {
    alert('You clicked, and valided this button !');
});

$("#del").popConfirm();

$("[data-toggle='confirmation']").popConfirm({
    title: "Really ?", // The title of the confirm
    content: "I have warned you !", // The message of the confirm
    placement: "bottom", // The placement of the confirm (Top, Right, Bottom, Left)
    container: "body", // The html container
    yesBtn: "Yeah",
    noBtn: "Oh no !!!"
});