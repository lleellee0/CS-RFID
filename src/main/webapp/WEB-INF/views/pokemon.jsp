<style>
img {
  position: absolute;
  left: 35vw;
  top: 10px;
  width: 30vw;
  z-index: 10000;
  opacity: 0.2;
}

h2 {
  color: white;
  left: 36vw;
  top: 10vw;
  width: 30vw;
  z-index: 10001;
  position: absolute;
  text-align: center;
  opacity: 0.5;
}

.pokonami {
  position: fixed;
  z-index: 9999;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  background: #1D1F20;
}
.pokonami .sprite {
  position: absolute;
  bottom: 10%;
  left: 25%;
  opacity: 0;
}
.pokonami .sprite i {
  background: url("http://files.simey.me/pokonami/sprite.png");
  background-repeat: no-repeat;
  display: block;
  width: 28px;
  height: 26px;
}
.pokonami .sprite quote {
  position: absolute;
  background: url("http://files.simey.me/pokonami/sprite.png");
  background-repeat: no-repeat;
  display: block;
  width: 15px;
  height: 18px;
  padding: 0;
  margin: 0;
  top: -8px;
  left: 8px;
}
.pokonami .sprite quote.love {
  background-position: -32px -62px;
}
.pokonami .sprite quote.exclamation {
  background-position: -129px -62px;
}
.pokonami .sprite quote.happy {
  background-position: -79px -62px;
}
.pokonami .sprite.ash {
  -webkit-animation: ash-move 20s 1s linear forwards 1;
          animation: ash-move 20s 1s linear forwards 1;
}
.pokonami .sprite.ash i {
  background-position: 0 0;
  -webkit-animation: ash 0.7s infinite steps(1);
          animation: ash 0.7s infinite steps(1);
}
.pokonami .sprite.ash quote {
  top: -19px;
  left: 8px;
  -webkit-animation: ash-quote 20s 1s linear forwards;
          animation: ash-quote 20s 1s linear forwards;
}
.pokonami .sprite.pikachu {
  -webkit-animation: pika-move 20s 1s linear forwards;
          animation: pika-move 20s 1s linear forwards;
  left: 24%;
}
.pokonami .sprite.pikachu quote {
  -webkit-animation: pika-quote 20s 1s linear forwards;
          animation: pika-quote 20s 1s linear forwards;
}
.pokonami .sprite.pokemon {
  margin-bottom: -3px;
}
.pokonami .sprite.pokemon.move {
  -webkit-animation: poke-move 20s linear forwards;
          animation: poke-move 20s linear forwards;
}
.pokonami .sprite.pokemon.move.togepi {
  -webkit-animation-duration: 40s;
          animation-duration: 40s;
  -webkit-animation-delay: 1s;
          animation-delay: 1s;
}
.pokonami .sprite.pokemon:after {
  content: "";
  width: 10px;
  height: 2px;
  position: absolute;
  z-index: -1;
  border-radius: 50%;
  margin-left: -5px;
  bottom: -2px;
  left: 50%;
  background: rgba(0, 0, 0, 0.5);
  box-shadow: 0 0 2px 1px rgba(0, 0, 0, 0.6);
}
.pokonami .sprite.pokemon i {
  width: 30px;
  height: 30px;
}
.pokonami .sprite.caterpie i {
  background-position: -30px 0;
  -webkit-animation: caterpie 0.25s infinite steps(1);
          animation: caterpie 0.25s infinite steps(1);
}
.pokonami .sprite.weedle i {
  background-position: -60px 0;
  -webkit-animation: weedle 0.25s infinite steps(1);
          animation: weedle 0.25s infinite steps(1);
}
.pokonami .sprite.beedrill i {
  background-position: -90px 0;
  -webkit-animation: beedrill 0.25s infinite steps(1);
          animation: beedrill 0.25s infinite steps(1);
}
.pokonami .sprite.pidgey i {
  background-position: -120px 0;
  -webkit-animation: pidgey 0.25s infinite steps(1);
          animation: pidgey 0.25s infinite steps(1);
}
.pokonami .sprite.spearow i {
  background-position: -150px 0;
  -webkit-animation: spearow 0.25s infinite steps(1);
          animation: spearow 0.25s infinite steps(1);
}
.pokonami .sprite.ekans i {
  background-position: -180px 0;
  -webkit-animation: ekans 0.25s infinite steps(1);
          animation: ekans 0.25s infinite steps(1);
}
.pokonami .sprite.sandshrew i {
  background-position: -210px 0;
  -webkit-animation: sandshrew 0.25s infinite steps(1);
          animation: sandshrew 0.25s infinite steps(1);
}
.pokonami .sprite.nidoran-f i {
  background-position: -240px 0;
  -webkit-animation: nidoran-f 0.25s infinite steps(1);
          animation: nidoran-f 0.25s infinite steps(1);
}
.pokonami .sprite.vulpix i {
  background-position: -270px 0;
  -webkit-animation: vulpix 0.25s infinite steps(1);
          animation: vulpix 0.25s infinite steps(1);
}
.pokonami .sprite.jigglypuff i {
  background-position: -300px 0;
  -webkit-animation: jigglypuff 0.25s infinite steps(1);
          animation: jigglypuff 0.25s infinite steps(1);
}
.pokonami .sprite.eevee i {
  background-position: -330px 0;
  -webkit-animation: eevee 0.25s infinite steps(1);
          animation: eevee 0.25s infinite steps(1);
}
.pokonami .sprite.sentret i {
  background-position: -360px 0;
  -webkit-animation: sentret 0.25s infinite steps(1);
          animation: sentret 0.25s infinite steps(1);
}
.pokonami .sprite.ledyba i {
  background-position: -390px 0;
  -webkit-animation: ledyba 0.25s infinite steps(1);
          animation: ledyba 0.25s infinite steps(1);
}
.pokonami .sprite.togepi i {
  background-position: -420px 0;
  -webkit-animation: togepi 0.25s infinite steps(1);
          animation: togepi 0.25s infinite steps(1);
}
.pokonami .sprite.flaafy i {
  background-position: -450px 0;
  -webkit-animation: flaafy 0.25s infinite steps(1);
          animation: flaafy 0.25s infinite steps(1);
}
.pokonami .sprite.butterfree i {
  background-position: -480px 0;
  -webkit-animation: butterfree 0.25s infinite steps(1);
          animation: butterfree 0.25s infinite steps(1);
}
.pokonami .sprite.pidgeotto i {
  background-position: -510px 0;
  -webkit-animation: pidgeotto 0.25s infinite steps(1);
          animation: pidgeotto 0.25s infinite steps(1);
}
.pokonami .sprite.rattata i {
  background-position: -540px 0;
  -webkit-animation: rattata 0.25s infinite steps(1);
          animation: rattata 0.25s infinite steps(1);
}
.pokonami .sprite.pikachu i {
  background-position: -570px 0;
  -webkit-animation: pikachu 0.25s infinite steps(1);
          animation: pikachu 0.25s infinite steps(1);
}
.pokonami .sprite.nidoran-m i {
  background-position: -600px 0;
  -webkit-animation: nidoran-m 0.25s infinite steps(1);
          animation: nidoran-m 0.25s infinite steps(1);
}
.pokonami .sprite.clefairy i {
  background-position: -630px 0;
  -webkit-animation: clefairy 0.25s infinite steps(1);
          animation: clefairy 0.25s infinite steps(1);
}
.pokonami .sprite.zubat i {
  background-position: -660px 0;
  -webkit-animation: zubat 0.25s infinite steps(1);
          animation: zubat 0.25s infinite steps(1);
}
.pokonami .sprite.oddish i {
  background-position: -690px 0;
  -webkit-animation: oddish 0.25s infinite steps(1);
          animation: oddish 0.25s infinite steps(1);
}
.pokonami .sprite.paras i {
  background-position: -720px 0;
  -webkit-animation: paras 0.25s infinite steps(1);
          animation: paras 0.25s infinite steps(1);
}
.pokonami .sprite.venonat i {
  background-position: -750px 0;
  -webkit-animation: venonat 0.25s infinite steps(1);
          animation: venonat 0.25s infinite steps(1);
}
.pokonami .sprite.growlithe i {
  background-position: -780px 0;
  -webkit-animation: growlithe 0.25s infinite steps(1);
          animation: growlithe 0.25s infinite steps(1);
}
.pokonami .sprite.poliwag i {
  background-position: -810px 0;
  -webkit-animation: poliwag 0.25s infinite steps(1);
          animation: poliwag 0.25s infinite steps(1);
}
.pokonami .sprite.abra i {
  background-position: -840px 0;
  -webkit-animation: abra 0.25s infinite steps(1);
          animation: abra 0.25s infinite steps(1);
}
.pokonami .sprite.bellsprout i {
  background-position: -870px 0;
  -webkit-animation: bellsprout 0.25s infinite steps(1);
          animation: bellsprout 0.25s infinite steps(1);
}
.pokonami .sprite.geodude i {
  background-position: -900px 0;
  -webkit-animation: geodude 0.25s infinite steps(1);
          animation: geodude 0.25s infinite steps(1);
}
.pokonami .sprite.cubone i {
  background-position: -930px 0;
  -webkit-animation: cubone 0.25s infinite steps(1);
          animation: cubone 0.25s infinite steps(1);
}
.pokonami .sprite.dratini i {
  background-position: -960px 0;
  -webkit-animation: dratini 0.25s infinite steps(1);
          animation: dratini 0.25s infinite steps(1);
}
.pokonami .sprite.spinarak i {
  background-position: -990px 0;
  -webkit-animation: spinarak 0.25s infinite steps(1);
          animation: spinarak 0.25s infinite steps(1);
}
.pokonami .sprite.mareep i {
  background-position: -1020px 0;
  -webkit-animation: mareep 0.25s infinite steps(1);
          animation: mareep 0.25s infinite steps(1);
}
.pokonami .sprite.marill i {
  background-position: -1050px 0;
  -webkit-animation: marill 0.25s infinite steps(1);
          animation: marill 0.25s infinite steps(1);
}
.pokonami .sprite.hoppip i {
  background-position: -1080px 0;
  -webkit-animation: hoppip 0.25s infinite steps(1);
          animation: hoppip 0.25s infinite steps(1);
}
.pokonami .sprite.phanpy i {
  background-position: -1110px 0;
  -webkit-animation: phanpy 0.25s infinite steps(1);
          animation: phanpy 0.25s infinite steps(1);
}
.pokonami .sprite.miltank i {
  background-position: -1140px 0;
  -webkit-animation: miltank 0.25s infinite steps(1);
          animation: miltank 0.25s infinite steps(1);
}
.pokonami .sprite.still i {
  -webkit-animation: none;
          animation: none;
}

@-webkit-keyframes ash {
  0% {
    background-position: 0 0;
  }
  25% {
    background-position: 0 -26px;
  }
  50% {
    background-position: 0 0;
  }
  75% {
    background-position: 0 -52px;
  }
}

@keyframes ash {
  0% {
    background-position: 0 0;
  }
  25% {
    background-position: 0 -26px;
  }
  50% {
    background-position: 0 0;
  }
  75% {
    background-position: 0 -52px;
  }
}
@-webkit-keyframes ash-move {
  0% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  2% {
    opacity: 1;
  }
  19% {
    -webkit-transform: translateX(32vw);
            transform: translateX(32vw);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  22% {
    -webkit-transform: translateX(35vw);
            transform: translateX(35vw);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  27% {
    -webkit-transform: translateX(35vw) scaleX(-1);
            transform: translateX(35vw) scaleX(-1);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(-2px);
            transform: translateX(35vw) scaleX(-1) translateY(-2px);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34.3% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(0);
            transform: translateX(35vw) scaleX(-1) translateY(0);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34.6% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(-2px);
            transform: translateX(35vw) scaleX(-1) translateY(-2px);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34.9% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(0);
            transform: translateX(35vw) scaleX(-1) translateY(0);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  35.2% {
    -webkit-transform: translateX(35vw) scaleX(1);
            transform: translateX(35vw) scaleX(1);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  36% {
    -webkit-transform: translateX(35vw) scaleX(1);
            transform: translateX(35vw) scaleX(1);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  39.7% {
    opacity: 1;
  }
  40% {
    -webkit-transform: translateX(50vw);
            transform: translateX(50vw);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes ash-move {
  0% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  2% {
    opacity: 1;
  }
  19% {
    -webkit-transform: translateX(32vw);
            transform: translateX(32vw);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  22% {
    -webkit-transform: translateX(35vw);
            transform: translateX(35vw);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  27% {
    -webkit-transform: translateX(35vw) scaleX(-1);
            transform: translateX(35vw) scaleX(-1);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(-2px);
            transform: translateX(35vw) scaleX(-1) translateY(-2px);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34.3% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(0);
            transform: translateX(35vw) scaleX(-1) translateY(0);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34.6% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(-2px);
            transform: translateX(35vw) scaleX(-1) translateY(-2px);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  34.9% {
    -webkit-transform: translateX(35vw) scaleX(-1) translateY(0);
            transform: translateX(35vw) scaleX(-1) translateY(0);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  35.2% {
    -webkit-transform: translateX(35vw) scaleX(1);
            transform: translateX(35vw) scaleX(1);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  36% {
    -webkit-transform: translateX(35vw) scaleX(1);
            transform: translateX(35vw) scaleX(1);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  39.7% {
    opacity: 1;
  }
  40% {
    -webkit-transform: translateX(50vw);
            transform: translateX(50vw);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes ash-quote {
  0% {
    opacity: 0;
  }
  26% {
    opacity: 0;
  }
  27% {
    opacity: 1;
  }
  36% {
    opacity: 1;
  }
  39.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes ash-quote {
  0% {
    opacity: 0;
  }
  26% {
    opacity: 0;
  }
  27% {
    opacity: 1;
  }
  36% {
    opacity: 1;
  }
  39.5% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes pika-move {
  0% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  2% {
    opacity: 1;
  }
  22% {
    -webkit-transform: translateX(37vw);
            transform: translateX(37vw);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  25% {
    -webkit-transform: translateX(40vw);
            transform: translateX(40vw);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  25.1% {
    -webkit-transform: translateX(40vw);
            transform: translateX(40vw);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  32% {
    -webkit-transform: translateX(40vw) scaleX(-1);
            transform: translateX(40vw) scaleX(-1);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  35% {
    -webkit-transform: translateX(40vw) scaleX(-1);
            transform: translateX(40vw) scaleX(-1);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  41% {
    -webkit-transform: translateX(33vw) scaleX(-1);
            transform: translateX(33vw) scaleX(-1);
  }
  46% {
    -webkit-transform: translateX(33vw) scaleX(-1);
            transform: translateX(33vw) scaleX(-1);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  48% {
    -webkit-transform: translateX(33vw) scaleX(1);
            transform: translateX(33vw) scaleX(1);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  54% {
    opacity: 1;
  }
  55% {
    -webkit-transform: translateX(50vw);
            transform: translateX(50vw);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes pika-move {
  0% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  2% {
    opacity: 1;
  }
  22% {
    -webkit-transform: translateX(37vw);
            transform: translateX(37vw);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  25% {
    -webkit-transform: translateX(40vw);
            transform: translateX(40vw);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  25.1% {
    -webkit-transform: translateX(40vw);
            transform: translateX(40vw);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  32% {
    -webkit-transform: translateX(40vw) scaleX(-1);
            transform: translateX(40vw) scaleX(-1);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  35% {
    -webkit-transform: translateX(40vw) scaleX(-1);
            transform: translateX(40vw) scaleX(-1);
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
  }
  41% {
    -webkit-transform: translateX(33vw) scaleX(-1);
            transform: translateX(33vw) scaleX(-1);
  }
  46% {
    -webkit-transform: translateX(33vw) scaleX(-1);
            transform: translateX(33vw) scaleX(-1);
    -webkit-animation-timing-function: steps(1);
            animation-timing-function: steps(1);
  }
  48% {
    -webkit-transform: translateX(33vw) scaleX(1);
            transform: translateX(33vw) scaleX(1);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  54% {
    opacity: 1;
  }
  55% {
    -webkit-transform: translateX(50vw);
            transform: translateX(50vw);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes pika-quote {
  0% {
    opacity: 0;
  }
  36% {
    opacity: 0;
  }
  37% {
    opacity: 1;
  }
  45% {
    opacity: 1;
  }
  46% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes pika-quote {
  0% {
    opacity: 0;
  }
  36% {
    opacity: 0;
  }
  37% {
    opacity: 1;
  }
  45% {
    opacity: 1;
  }
  46% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes poke-move {
  0% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  40% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  41% {
    opacity: 1;
  }
  64% {
    opacity: 1;
  }
  66% {
    opacity: 0;
    -webkit-transform: translateX(50vw);
            transform: translateX(50vw);
  }
  100% {
    opacity: 0;
  }
}
@keyframes poke-move {
  0% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  40% {
    opacity: 0;
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
  41% {
    opacity: 1;
  }
  64% {
    opacity: 1;
  }
  66% {
    opacity: 0;
    -webkit-transform: translateX(50vw);
            transform: translateX(50vw);
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes caterpie {
  0% {
    background-position: -30px 0;
  }
  50% {
    background-position: -30px -30px;
  }
}
@keyframes caterpie {
  0% {
    background-position: -30px 0;
  }
  50% {
    background-position: -30px -30px;
  }
}
@-webkit-keyframes weedle {
  0% {
    background-position: -60px 0;
  }
  50% {
    background-position: -60px -30px;
  }
}
@keyframes weedle {
  0% {
    background-position: -60px 0;
  }
  50% {
    background-position: -60px -30px;
  }
}
@-webkit-keyframes beedrill {
  0% {
    background-position: -90px 0;
  }
  50% {
    background-position: -90px -30px;
  }
}
@keyframes beedrill {
  0% {
    background-position: -90px 0;
  }
  50% {
    background-position: -90px -30px;
  }
}
@-webkit-keyframes pidgey {
  0% {
    background-position: -120px 0;
  }
  50% {
    background-position: -120px -30px;
  }
}
@keyframes pidgey {
  0% {
    background-position: -120px 0;
  }
  50% {
    background-position: -120px -30px;
  }
}
@-webkit-keyframes spearow {
  0% {
    background-position: -150px 0;
  }
  50% {
    background-position: -150px -30px;
  }
}
@keyframes spearow {
  0% {
    background-position: -150px 0;
  }
  50% {
    background-position: -150px -30px;
  }
}
@-webkit-keyframes ekans {
  0% {
    background-position: -180px 0;
  }
  50% {
    background-position: -180px -30px;
  }
}
@keyframes ekans {
  0% {
    background-position: -180px 0;
  }
  50% {
    background-position: -180px -30px;
  }
}
@-webkit-keyframes sandshrew {
  0% {
    background-position: -210px 0;
  }
  50% {
    background-position: -210px -30px;
  }
}
@keyframes sandshrew {
  0% {
    background-position: -210px 0;
  }
  50% {
    background-position: -210px -30px;
  }
}
@-webkit-keyframes nidoran-f {
  0% {
    background-position: -240px 0;
  }
  50% {
    background-position: -240px -30px;
  }
}
@keyframes nidoran-f {
  0% {
    background-position: -240px 0;
  }
  50% {
    background-position: -240px -30px;
  }
}
@-webkit-keyframes vulpix {
  0% {
    background-position: -270px 0;
  }
  50% {
    background-position: -270px -30px;
  }
}
@keyframes vulpix {
  0% {
    background-position: -270px 0;
  }
  50% {
    background-position: -270px -30px;
  }
}
@-webkit-keyframes jigglypuff {
  0% {
    background-position: -300px 0;
  }
  50% {
    background-position: -300px -30px;
  }
}
@keyframes jigglypuff {
  0% {
    background-position: -300px 0;
  }
  50% {
    background-position: -300px -30px;
  }
}
@-webkit-keyframes eevee {
  0% {
    background-position: -330px 0;
  }
  50% {
    background-position: -330px -30px;
  }
}
@keyframes eevee {
  0% {
    background-position: -330px 0;
  }
  50% {
    background-position: -330px -30px;
  }
}
@-webkit-keyframes sentret {
  0% {
    background-position: -360px 0;
  }
  50% {
    background-position: -360px -30px;
  }
}
@keyframes sentret {
  0% {
    background-position: -360px 0;
  }
  50% {
    background-position: -360px -30px;
  }
}
@-webkit-keyframes ledyba {
  0% {
    background-position: -390px 0;
  }
  50% {
    background-position: -390px -30px;
  }
}
@keyframes ledyba {
  0% {
    background-position: -390px 0;
  }
  50% {
    background-position: -390px -30px;
  }
}
@-webkit-keyframes togepi {
  0% {
    background-position: -420px 0;
  }
  50% {
    background-position: -420px -30px;
  }
}
@keyframes togepi {
  0% {
    background-position: -420px 0;
  }
  50% {
    background-position: -420px -30px;
  }
}
@-webkit-keyframes flaafy {
  0% {
    background-position: -450px 0;
  }
  50% {
    background-position: -450px -30px;
  }
}
@keyframes flaafy {
  0% {
    background-position: -450px 0;
  }
  50% {
    background-position: -450px -30px;
  }
}
@-webkit-keyframes butterfree {
  0% {
    background-position: -480px 0;
  }
  50% {
    background-position: -480px -30px;
  }
}
@keyframes butterfree {
  0% {
    background-position: -480px 0;
  }
  50% {
    background-position: -480px -30px;
  }
}
@-webkit-keyframes pidgeotto {
  0% {
    background-position: -510px 0;
  }
  50% {
    background-position: -510px -30px;
  }
}
@keyframes pidgeotto {
  0% {
    background-position: -510px 0;
  }
  50% {
    background-position: -510px -30px;
  }
}
@-webkit-keyframes rattata {
  0% {
    background-position: -540px 0;
  }
  50% {
    background-position: -540px -30px;
  }
}
@keyframes rattata {
  0% {
    background-position: -540px 0;
  }
  50% {
    background-position: -540px -30px;
  }
}
@-webkit-keyframes pikachu {
  0% {
    background-position: -570px 0;
  }
  50% {
    background-position: -570px -30px;
  }
}
@keyframes pikachu {
  0% {
    background-position: -570px 0;
  }
  50% {
    background-position: -570px -30px;
  }
}
@-webkit-keyframes nidoran-m {
  0% {
    background-position: -600px 0;
  }
  50% {
    background-position: -600px -30px;
  }
}
@keyframes nidoran-m {
  0% {
    background-position: -600px 0;
  }
  50% {
    background-position: -600px -30px;
  }
}
@-webkit-keyframes clefairy {
  0% {
    background-position: -630px 0;
  }
  50% {
    background-position: -630px -30px;
  }
}
@keyframes clefairy {
  0% {
    background-position: -630px 0;
  }
  50% {
    background-position: -630px -30px;
  }
}
@-webkit-keyframes zubat {
  0% {
    background-position: -660px 0;
  }
  50% {
    background-position: -660px -30px;
  }
}
@keyframes zubat {
  0% {
    background-position: -660px 0;
  }
  50% {
    background-position: -660px -30px;
  }
}
@-webkit-keyframes oddish {
  0% {
    background-position: -690px 0;
  }
  50% {
    background-position: -690px -30px;
  }
}
@keyframes oddish {
  0% {
    background-position: -690px 0;
  }
  50% {
    background-position: -690px -30px;
  }
}
@-webkit-keyframes paras {
  0% {
    background-position: -720px 0;
  }
  50% {
    background-position: -720px -30px;
  }
}
@keyframes paras {
  0% {
    background-position: -720px 0;
  }
  50% {
    background-position: -720px -30px;
  }
}
@-webkit-keyframes venonat {
  0% {
    background-position: -750px 0;
  }
  50% {
    background-position: -750px -30px;
  }
}
@keyframes venonat {
  0% {
    background-position: -750px 0;
  }
  50% {
    background-position: -750px -30px;
  }
}
@-webkit-keyframes growlithe {
  0% {
    background-position: -780px 0;
  }
  50% {
    background-position: -780px -30px;
  }
}
@keyframes growlithe {
  0% {
    background-position: -780px 0;
  }
  50% {
    background-position: -780px -30px;
  }
}
@-webkit-keyframes poliwag {
  0% {
    background-position: -810px 0;
  }
  50% {
    background-position: -810px -30px;
  }
}
@keyframes poliwag {
  0% {
    background-position: -810px 0;
  }
  50% {
    background-position: -810px -30px;
  }
}
@-webkit-keyframes abra {
  0% {
    background-position: -840px 0;
  }
  50% {
    background-position: -840px -30px;
  }
}
@keyframes abra {
  0% {
    background-position: -840px 0;
  }
  50% {
    background-position: -840px -30px;
  }
}
@-webkit-keyframes bellsprout {
  0% {
    background-position: -870px 0;
  }
  50% {
    background-position: -870px -30px;
  }
}
@keyframes bellsprout {
  0% {
    background-position: -870px 0;
  }
  50% {
    background-position: -870px -30px;
  }
}
@-webkit-keyframes geodude {
  0% {
    background-position: -900px 0;
  }
  50% {
    background-position: -900px -30px;
  }
}
@keyframes geodude {
  0% {
    background-position: -900px 0;
  }
  50% {
    background-position: -900px -30px;
  }
}
@-webkit-keyframes cubone {
  0% {
    background-position: -930px 0;
  }
  50% {
    background-position: -930px -30px;
  }
}
@keyframes cubone {
  0% {
    background-position: -930px 0;
  }
  50% {
    background-position: -930px -30px;
  }
}
@-webkit-keyframes dratini {
  0% {
    background-position: -960px 0;
  }
  50% {
    background-position: -960px -30px;
  }
}
@keyframes dratini {
  0% {
    background-position: -960px 0;
  }
  50% {
    background-position: -960px -30px;
  }
}
@-webkit-keyframes spinarak {
  0% {
    background-position: -990px 0;
  }
  50% {
    background-position: -990px -30px;
  }
}
@keyframes spinarak {
  0% {
    background-position: -990px 0;
  }
  50% {
    background-position: -990px -30px;
  }
}
@-webkit-keyframes mareep {
  0% {
    background-position: -1020px 0;
  }
  50% {
    background-position: -1020px -30px;
  }
}
@keyframes mareep {
  0% {
    background-position: -1020px 0;
  }
  50% {
    background-position: -1020px -30px;
  }
}
@-webkit-keyframes marill {
  0% {
    background-position: -1050px 0;
  }
  50% {
    background-position: -1050px -30px;
  }
}
@keyframes marill {
  0% {
    background-position: -1050px 0;
  }
  50% {
    background-position: -1050px -30px;
  }
}
@-webkit-keyframes hoppip {
  0% {
    background-position: -1080px 0;
  }
  50% {
    background-position: -1080px -30px;
  }
}
@keyframes hoppip {
  0% {
    background-position: -1080px 0;
  }
  50% {
    background-position: -1080px -30px;
  }
}
@-webkit-keyframes phanpy {
  0% {
    background-position: -1110px 0;
  }
  50% {
    background-position: -1110px -30px;
  }
}
@keyframes phanpy {
  0% {
    background-position: -1110px 0;
  }
  50% {
    background-position: -1110px -30px;
  }
}
@-webkit-keyframes miltank {
  0% {
    background-position: -1140px 0;
  }
  50% {
    background-position: -1140px -30px;
  }
}
@keyframes miltank {
  0% {
    background-position: -1140px 0;
  }
  50% {
    background-position: -1140px -30px;
  }
}
</style>



<img src="http://fc00.deviantart.net/fs70/i/2012/308/0/b/__hd___pokemon_logo___hd___by_peetzaahhh2010-d5k08gz.png" />
<h2>Meanwhile in Pallet Town...</h2>

    <div class="pokonami">

        <i class="sprite ash">
            <i></i>
            <quote class="exclamation"></quote>
        </i>
        
        <i class="sprite pokemon pikachu">
            <i></i>
            <quote class="love"></quote>
        </i>
            
        <i class="sprite pokemon togepi move">
            <i></i>
            <quote class="love"></quote>
        </i>

        <div class="pokemons">
        </div>

    </div>

    <audio id="pallet" src="http://files.simey.me/pokonami/pallet.mp3" autoplay="true" reload="auto"></audio>
    <audio id="battle" src="http://files.simey.me/pokonami/battle.mp3" preload="auto"></audio>


<script>
(function(){

    var pokemons = {
        common: [

            "pidgey", 
            "spearow", 
            "nidoran-f", 
            "nidoran-m", 
            "rattata", 
            "sentret",
            "oddish", 
            "geodude",  
            "mareep"

        ],

        uncommon: [

            "ekans", 
            "sandshrew", 
            "bellsprout",
            "caterpie", 
            "weedle",
            "paras", 
            "zubat", 
            "venonat", 
            "vulpix", 
            "jigglypuff", 
            "ledyba", 
            "flaafy", 
            "clefairy", 
            "spinarak", 
            "marill", 
            "hoppip", 
            "growlithe", 
            "phanpy",
            "cubone", 
            "poliwag",  
            "eevee", 
            "abra"

        ],

        rare: [

            "beedrill", 
            "butterfree",
            "pidgeotto", 
            "dratini",
            "miltank"

        ],

        flying: "beedrill butterfree pidgeotto ledyba zubat"

    };

    function getY( pokemon ) {
        if( pokemons.flying.indexOf( pokemon ) >= 0 ) {
            return (( Math.random() * 3 ) + 11).toFixed(2);
        } else {
           return  (( Math.random() * 3 ) + 9).toFixed(2);
        }
    }

    function getZ( y ) {
        return Math.floor((20 - y) * 100);
    }

    function randomPokemon( type ) {
        return pokemons[type][ Math.floor( Math.random() * pokemons[type].length ) ];
    }

    function makePokemon( type ) {

        var xDelay = ( type === "common" ) ? 0 : ( type === "uncommon" ) ? 0.4 : 0.8;
        var delay = "-webkit-animation-delay: " + ( Math.random() * 1.7 + xDelay ).toFixed(3) + "s;";
        var pokemon = randomPokemon( type );
        var bottom = getY( pokemon );
        var y = "bottom: "+ bottom +"%;";
        var z = "z-index: "+ getZ( bottom ) + ";";
        var style = "style='"+delay+" "+y+" "+z+"'";

        return "" + 
            "<i class='sprite pokemon move " + pokemon + "' "+ style + ">" + 
                "<i style='"+ delay + "'></i>" + 
            "</i>";
    }

    var commons = Math.floor( Math.random() * 25 ) + 25;
    var uncommons = Math.floor( Math.random() * 5 ) + 8;
    var rares = 4;

    var container = document.querySelectorAll(".pokemons")[0];
    var horde = "";

    for ( i = 0 ; i < commons ; i++ ) {
        horde += makePokemon( "common" );
    }

    for ( i = 0 ; i < uncommons ; i++ ) {
        horde += makePokemon( "uncommon" );
    }

    for ( i = 0 ; i < rares ; i++ ) {
        horde += makePokemon( "rare" );
    }

    container.innerHTML = horde;



    var battle = document.querySelector("#battle");
    var pallet = document.querySelector("#pallet");
	
    pallet.volume = 0.1;
    battle.volume = 0.1;
    pallet.play();
    
    setTimeout(function() {
        pallet.pause();
    },8000);

    setTimeout(function() {
        battle.play();
    },7000);

    setTimeout(function() {
        battle.pause();
    },17000);

    setTimeout(function() {
        pallet.play();
    },17000);

    setTimeout(function() {
        pallet.pause();
    },30000);


}());
</script>