@Entry
@Component
struct ItemDetail {
@State value : number=0
  build() {
    Column({space: 15}) {
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.Back")).width(40).height(25)
        Text("Detail").fontSize(25).fontWeight(FontWeight.Bolder)
        Image($r("app.media.Detail")).width(52).height(30)
      }
      .padding(10);
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Image($r("app.media.Shoe12")).width(280).height(170)
      }
      Text("Running Unisex Shoes").fontSize(20).fontWeight(FontWeight.Bolder)
      Text("₹ 6825").fontSize(20).fontWeight(FontWeight.Bolder)
      Flex({justifyContent: FlexAlign.SpaceBetween}){
        Text("A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture, with form originally being tied to function. Though the human foot can adapt to varied terrains and climate conditions, it is still vulnerable to environmental hazards such as sharp rocks and temperature extremes, which shoes protect against. Some shoes are worn as safety equipment, such as steel-toe boots which are required footwear at industrial worksites.Additionally, fashion has often dictated many design elements, such as whether shoes have very high heels or flat ones. Contemporary footwear varies widely in style, complexity and cost. Basic sandals may consist of only a thin sole and simple strap and be sold for a low cost. High fashion shoes made by famous designers may be made of expensive materials, use complex construction and sell for large sums of money. Some shoes are designed for specific purposes, such as boots designed specifically for mountaineering or skiing, while others have more generalized usage such as sneakers which have transformed from a special purpose sport shoe into a general use shoe.")
          .fontSize(12).fontColor("#DCDCDC").backgroundColor(Color.White)
      }
      .height(80).margin(10);
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Text("Color").fontSize(25).fontWeight(FontWeight.Bold)
        Image($r("app.media.Red")).width(35).height(35)
        Image($r("app.media.Blue")).width(35).height(35)
        Image($r("app.media.Green")).width(35).height(35)
        Counter() {
          Text(this.value.toString()).fontSize(25);
        }
        .height(25)
        .onInc(()=>{
          this.value++
        })
        .onDec(()=>{
          this.value--
        })
      }
      Text("Available Sizes").fontSize(15).fontWeight(FontWeight.Bolder)
      Column(){}.height(7)
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Button("6 inches").fontSize(12).fontColor(Color.Black).backgroundColor("#C8C8C8")
        Button("7 inches").fontSize(12).fontColor(Color.Black).backgroundColor("#C8C8C8")
        Button("8 inches").fontSize(12).fontColor(Color.White).backgroundColor("#0096FF")
        Button("9 inches").fontSize(12).fontColor(Color.Black).backgroundColor("#C8C8C8")
      }
      Column(){}.height(10)
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.Heart")).height(52).width(60);
        Button("Add to cart").fontSize(20).fontColor(Color.White).width(220).backgroundColor("#0096FF");
      }
    }
    .alignItems(HorizontalAlign.Start)
    .margin(25);
  }
}