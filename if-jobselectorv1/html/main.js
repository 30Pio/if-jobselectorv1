$(function () {
    function display(bool) {
        if (bool) {
            $("body").show();
        } else {
            $("body").hide();
        }
    }
 
    display(false)
 
    window.addEventListener('message', function (event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        } else if (item.type === "add"){
            $(".job-list").append
            (`
            <div class="job-box" onclick="jobs2('` + item.title + `', '` + item.img + `','` + item.lvl + `','` + item.players + `','` + item.time + `','` + item.jobdescription + `','` + item.titleimg1 + `','` + item.titleimg2 + `','` + item.jobconfirmtitle + `','` + item.jobconfirmtext + `','` + item.jobname + `','` + item.jobselectortitle + `','` + item.jobselectortext + `')">
            <p class="job-name">`+item.title+`</p>
            <img src="./images/`+item.img+`" class="job-logo">
            <img src="./images/border.png" class="border">
            </div>
            `);
            $('.title').text(item.jobselectortitle);
            $('.description').text(item.jobselectortext);
        } else if (item.type == "clearjob"){
            $('.job-list').html("");
        }
    })    

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://if-jobselectorv1/exit', JSON.stringify({}));
            $('.job-wrapper').html("");
            $(".main-wrapper").fadeIn();
            $(".job-wrapper").fadeOut();
            $(".job-confirm").fadeOut();
            return
        }
    };
    $("#close2").click(function()  {
        $.post('http://if-jobselectorv1/exit', JSON.stringify({}));
       return
   })
})


function jobs2(title, img, lvl, players, time, jobdescription, titleimg1, titleimg2, jobconfirmtitle, jobconfirmtext, jobname, jobselectortitle, jobselectortext){
        $(".job-wrapper").fadeIn(250);
        $(".main-wrapper").fadeOut(250);
        $(".job-wrapper").append
        (`
        <div class="header">
            <p class="title">`+jobselectortitle+`</p>
            <p class="description">`+jobselectortext+`</p>
            <div class="close" onclick="close44()">x</div>
        </div>
        <div class="job-box-2">
            <p id="select-job-name" class="job-name-2">`+title+`</p>
            <img src="./images/`+img+`" class="job-logo">
            <img src="./images/border.png" class="border">
        </div>
        <div class="job-information">
            <p id="select-job-name" class="job-name-1">`+title+`</p>
            <p id="job-level">`+lvl+`</p>
            <p id="job-players">`+players+`</p>
            <p id="job-hours">`+time+`</p>
            <p id="job-description">`+jobdescription+`</p>
            <button id="start-job" onclick="startjob()">Get Started</button>
            <button id="go-back" onclick="goback()">Go Back</button>
        </div>
        <div class="sub-images">
            <img src="./images/`+titleimg1+`" class="sub-image">
            <img src="./images/`+titleimg2+`" class="sub-image">

        </div>
        <div class="job-confirm">
            <p class="text-1">`+jobconfirmtitle+`</p>
            <p class="text-2">`+jobconfirmtext+`</p>
            <button id="confirm" onclick="accept('`+jobname+`')">Yes</button>
            <button id="cancel" onclick="cancel()">No</button>
        </div>
      
        `);
		sound()
      }

function accept(jobname){
    $.post('http://if-jobselectorv1/getjob', JSON.stringify({
        jobname: jobname,
    }));
    $('.job-wrapper').html("");
    $(".main-wrapper").fadeIn();
    $(".job-wrapper").fadeOut();
    $(".job-confirm").fadeOut();
}     

function goback(){
    $(".main-wrapper").fadeIn();
    $(".job-wrapper").fadeOut();
    $('.job-wrapper').html("");
}     

function cancel(){
    $(".job-information").fadeIn();
    $(".job-confirm").fadeOut();
}     
 
function startjob(){
    $(".job-information").fadeOut();
    $(".job-confirm").fadeIn();
    
}   

function close44(){
    $.post('http://if-jobselectorv1/exit', JSON.stringify({}));
    $('.job-wrapper').html("");
    $(".main-wrapper").fadeIn();
    $(".job-wrapper").fadeOut();
    $(".job-confirm").fadeOut();
}   

  function sound() {
    document.getElementById('sound').pause()
    document.getElementById('sound').currentTime = 0
    document.getElementById('sound').play()
  }
