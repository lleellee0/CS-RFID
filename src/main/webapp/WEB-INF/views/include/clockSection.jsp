<section class="mbr-section--bg-adapted mbr-section--relative" id="content7-6" style="background-color: rgb(255, 255, 255);
  margin: 0;
  background: #f2f2f2;
  display: flex;
  justify-content: center;
  align-items: center;">
            <script src='//assets.codepen.io/assets/editor/live/console_runner-d0a557e5cb67f9cd9bbb9673355c7e8e.js'></script><script src='//assets.codepen.io/assets/editor/live/events_runner-21174b4c7273cfddc124acb0876792e0.js'></script><script src='//assets.codepen.io/assets/editor/live/css_live_reload_init-7618a0de08795409d8f6c9ef6805f7b2.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="canonical" href="http://codepen.io/zastrow/pen/QNJOYo" />


<style class="cp-pen-styles">
.clock {
  background: #222;
  width: 40vw;
  padding: 3vw 2vw;
  border-radius: 2vw;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  box-shadow: 0 2vw 4vw -1vw black;
  margin: 100px 0px;
}

svg {
  width: 90%;
  -webkit-transform: skewX(-10deg);
          transform: skewX(-10deg);
}

.t, .tl, .tr, .m, .b, .bl, .br {
  fill: #333;
}

.separator {
  fill: #e0eb68;
  -webkit-animation: blink 2s linear infinite;
          animation: blink 2s linear infinite;
}

@-webkit-keyframes blink {
  0% {
    fill: #e0eb68;
  }
  50% {
    fill: #e0eb68;
  }
  51% {
    fill: #333;
  }
  100% {
    fill: #333;
  }
}

@keyframes blink {
  0% {
    fill: #e0eb68;
  }
  50% {
    fill: #e0eb68;
  }
  51% {
    fill: #333;
  }
  100% {
    fill: #333;
  }
}
.time-0 .t, .time-0 .tl, .time-0 .tr, .time-0 .b, .time-0 .bl, .time-0 .br {
  fill: #e0eb68;
}

.time-1 .tr, .time-1 .br {
  fill: #e0eb68;
}

.time-2 .t, .time-2 .tr, .time-2 .m, .time-2 .b, .time-2 .bl {
  fill: #e0eb68;
}

.time-3 .t, .time-3 .tr, .time-3 .m, .time-3 .b, .time-3 .br {
  fill: #e0eb68;
}

.time-4 .tl, .time-4 .tr, .time-4 .m, .time-4 .br {
  fill: #e0eb68;
}

.time-5 .t, .time-5 .tl, .time-5 .m, .time-5 .b, .time-5 .br {
  fill: #e0eb68;
}

.time-6 .t, .time-6 .tl, .time-6 .m, .time-6 .b, .time-6 .bl, .time-6 .br {
  fill: #e0eb68;
}

.time-7 .t, .time-7 .tr, .time-7 .br {
  fill: #e0eb68;
}

.time-8 .t, .time-8 .tl, .time-8 .tr, .time-8 .m, .time-8 .b, .time-8 .bl, .time-8 .br {
  fill: #e0eb68;
}

.time-9 .t, .time-9 .tl, .time-9 .tr, .time-9 .m, .time-9 .b, .time-9 .br {
  fill: #e0eb68;
}
</style></head><body>
<div class="clock">
  <svg viewBox="0 0 388 148">
    <defs>
      <g id="vertical">
        <circle r="2" cx="4" cy="14" />
        <circle r="2" cx="4" cy="24" />
        <circle r="2" cx="4" cy="34" />
        <circle r="2" cx="4" cy="44" />
        <circle r="2" cx="4" cy="54" />
        <circle r="2" cx="4" cy="64" />
      </g>
      <g id="horizontal">
        <circle r="2" cx="4" cy="4" />
        <circle r="2" cx="14" cy="4" />
        <circle r="2" cx="24" cy="4" />
        <circle r="2" cx="34" cy="4" />
        <circle r="2" cx="44" cy="4" />
        <circle r="2" cx="54" cy="4" />
      </g>
    </defs>
    <g id="d1">
      <use xlink:href="#horizontal" class="t" x="10" y="0"></use>
      <use xlink:href="#vertical" class="tl" x="0" y="0"></use>
      <use xlink:href="#vertical" class="tr" x="70" y="0"></use>
      <use xlink:href="#horizontal" class="m" x="10" y="70"></use>
      <use xlink:href="#vertical" class="bl" x="0" y="70"></use>
      <use xlink:href="#vertical" class="br" x="70" y="70"></use>
      <use xlink:href="#horizontal" class="b" x="10" y="140"></use>
    </g>
    <g id="d2">
      <use xlink:href="#horizontal" class="t" x="100" y="0"></use>
      <use xlink:href="#vertical" class="tl" x="90" y="0"></use>
      <use xlink:href="#vertical" class="tr" x="160" y="0"></use>
      <use xlink:href="#horizontal" class="m" x="100" y="70"></use>
      <use xlink:href="#vertical" class="bl" x="90" y="70"></use>
      <use xlink:href="#vertical" class="br" x="160" y="70"></use>
      <use xlink:href="#horizontal" class="b" x="100" y="140"></use>
    </g>
    <g class="separator">
      <circle r="2" cx="194" cy="34" />
      <circle r="2" cx="194" cy="44" />
      <circle r="2" cx="194" cy="54" />
      <circle r="2" cx="194" cy="94" />
      <circle r="2" cx="194" cy="104" />
      <circle r="2" cx="194" cy="114" />
    </g>
    <g id="d3">
      <use xlink:href="#horizontal" class="t" x="230" y="0"></use>
      <use xlink:href="#vertical" class="tl" x="220" y="0"></use>
      <use xlink:href="#vertical" class="tr" x="290" y="0"></use>
      <use xlink:href="#horizontal" class="m" x="230" y="70"></use>
      <use xlink:href="#vertical" class="bl" x="220" y="70"></use>
      <use xlink:href="#vertical" class="br" x="290" y="70"></use>
      <use xlink:href="#horizontal" class="b" x="230" y="140"></use>
    </g>
    <g id="d4">
      <use xlink:href="#horizontal" class="t" x="320" y="0"></use>
      <use xlink:href="#vertical" class="tl" x="310" y="0"></use>
      <use xlink:href="#vertical" class="tr" x="380" y="0"></use>
      <use xlink:href="#horizontal" class="m" x="320" y="70"></use>
      <use xlink:href="#vertical" class="bl" x="310" y="70"></use>
      <use xlink:href="#vertical" class="br" x="380" y="70"></use>
      <use xlink:href="#horizontal" class="b" x="320" y="140"></use>
    </g>
  </svg>
</div>
<script src='//assets.codepen.io/assets/common/stopExecutionOnTimeout.js?t=1'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js'></script>
<script>function clock() {
  var h = (moment().format('hh')).split(''),
      m = (moment().format('mm')).split('');

  function addClass(el,n) {
    var newClass = 'time-' + n;
    if (el.classList) {
      el.setAttribute('class', newClass);
    }
  }
  addClass(d1,h[0]);
  addClass(d2,h[1]);
  addClass(d3,m[0]);
  addClass(d4,m[1]);  
}

var timerDisplay = setInterval('clock()', 1000);
//# sourceURL=pen.js
</script>
</section>