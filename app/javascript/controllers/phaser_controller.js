import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  connect() {
    console.log(this)
    const config = {
    type: Phaser.AUTO,
    width: 360,
    height: 730,
    physics: {
      default: 'arcade',
      arcade: {
        gravity: { y: 10 },
      }
    },
    scene: {
      preload: this.preload,
      create: this.create,
      update: this.update
  }
  };
    const game = new Phaser.Game(config);
    this.element.appendChild(game.canvas);
    game.scene.start();


  }


    preload() {
      this.load.image('background', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688389322/background_lkij73.jpg');
      this.load.image('store1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395588/store_1_kwsoho.png');
      this.load.image('food1', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395488/bakery_zvmuom.png');
      this.load.image('Hospital', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395511/hospital_cf8bep.png');
      this.load.image('National Fashion Store', 'https://res.cloudinary.com/dgyeheb95/image/upload/v1688395484/fashion_boutik_hpc539.png');
    }

    create() {
      //Background image
      const backgroundImage = this.add.image(180, 365, 'background');
      backgroundImage.setDisplaySize(this.sys.game.config.width, this.sys.game.config.height);

      //store level 1
      const store1 = this.add.image(270,550, 'store1');
      store1.setDisplaySize(55, 60);

      const food1 = this.add.image(130,300, 'food1');
      food1.setDisplaySize(55, 60);


    }



    update() {
      // level 2
      const Hospital = this.add.image(100,210, 'Hospital');
      Hospital.setDisplaySize(70, 85);

      // level 3
      const NationalFashionStore = this.add.image(270,300, 'National Fashion Store');
      NationalFashionStore.setDisplaySize(100, 50);

    }

}
