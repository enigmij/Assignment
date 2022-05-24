@Entry
@Component
struct Page {
  build() {
    Column({space: 15}) {
        Flex({justifyContent: FlexAlign.SpaceBetween}) {
          Image($r("app.media.Back")).width(40).height(25)
          Text("Filter").fontSize(25).fontWeight(FontWeight.Bolder)
          Image($r("app.media.Detail")).width(52).height(30)
        }
        Text("Gender").fontSize(20).fontWeight(FontWeight.Bolder)
        Flex({justifyContent: FlexAlign.Start}) {
          Row({ space: 15}) {
            Button("Male").fontColor(Color.White).backgroundColor("#0096FF")
            Button("Female").fontColor(Color.Black).backgroundColor("#C8C8C8")
            Button("Both").fontColor(Color.Black).backgroundColor("#C8C8C8")
          }
        }
        Text("Category").fontSize(20).fontWeight(FontWeight.Bolder);
        Button("Select Category          >").fontSize(20).fontColor(Color.Black).backgroundColor("#C8C8C8")
        Text("Brand").fontSize(20).fontWeight(FontWeight.Bolder)
        Button("Select Brand              >").fontSize(20).fontColor(Color.Black).backgroundColor("#C8C8C8")
        Text("Price").fontSize(20).fontWeight(FontWeight.Bolder)
        Column() {
          Text("₹ 3999").fontWeight(FontWeight.Bolder).fontSize(20);
          Slider({
            value: 3999,
            min: 2500,
            max: 5999,
            step: 10,
            style: SliderStyle.OutSet
          });
        }.padding(15)
        Text("Sizes").fontSize(20).fontWeight(FontWeight.Bolder)
        Flex({justifyContent: FlexAlign.SpaceAround}) {
          Button("6 inches").fontSize(12).fontColor(Color.Black).backgroundColor("#C8C8C8")
          Button("7 inches").fontSize(12).fontColor(Color.Black).backgroundColor("#C8C8C8")
          Button("8 inches").fontSize(12).fontColor(Color.White).backgroundColor("#0096FF")
          Button("9 inches").fontSize(12).fontColor(Color.Black).backgroundColor("#C8C8C8")
        }
Column(){}.height(10)
        Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Button("Clear All").fontSize(30).fontColor(Color.Black).backgroundColor("#C8C8C8").width(160)
        Button("Add").fontSize(30).fontColor(Color.White).backgroundColor("#0096FF").width(140)
      }
    }
    .alignItems(HorizontalAlign.Start)
    .margin(25);
  }
}