$(function(){
    $(".header").load("header.html");
    $(".main").load("main.html");
    builtable();
})

function builtable(){
    $.get("https://60a7c3ee8532520017ae4ec7.mockapi.io/department", function(data,status) {
        departments=[]
        data.forEach(function(item){
            $("tbody").append(
              
           '<tr>' +
           '<td>' + item.Department + '</td>' +
           '<td>' + item.NOEmployee + '</td>' +
           '<td>' +
           '<a class="edit" title="Edit" data-toggle="tooltip" onclick="openUpdateModal(' + item.id + ')"><i class="material-icons">&#xE254;</i></a>' +
           '<a class="delete" title="Delete" data-toggle="tooltip" onClick="openConfirmDelete(' + item.id + ')"><i class="material-icons">&#xE872;</i></a>' +
           '</td>' +
           '</tr>')

        })
    });

}

function openAddModal(){
    $("#createmodal").modal("show");
}

