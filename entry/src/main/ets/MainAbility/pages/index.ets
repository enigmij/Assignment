@Entry
@Component
struct Index {
  controller: TabsController = new TabsController();
  build() {
    Column({space: 12}) {
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.Popup")).width(60).height(50);
        Image($r("app.media.ProfilePhoto")).width(50).height(50);
      }
      Text("Discover").fontSize(20).fontWeight(FontWeight.Bolder)
      Text("our new items").fontSize(20).fontWeight(FontWeight.Bolder)
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Button("Search").fontColor("#A9A9A9").backgroundColor("#DCDCDC").width(270)
        Image($r("app.media.Filter")).width(40).height(35)
      }

      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.Shoe3")).width(110).height(70)
        Column() {
          Text("Running Unisex Shoes").fontSize(15).fontWeight(FontWeight.Bolder)
          Text("Coming Soon...").fontSize(15).fontWeight(FontWeight.Bolder).fontColor("#0096FF");
        }
        Column() {
          Toggle({ type: ToggleType.Switch, isOn: true }).width(50).height(20)
          Text("Notify Me").fontColor("#A9A9A9").fontSize(15)
        }
      }
      Text("Categories").fontSize(20).fontWeight(FontWeight.Bolder)
        Column() {
          Tabs({ barPosition: BarPosition.Start, index: 0, controller: this.controller }) {
            TabContent() {
              Flex({justifyContent: FlexAlign.SpaceAround}) {

                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Shoe1")).width(120).height(70)
                    Column(){}.height(20)
                    Text("Sport Shoes").fontSize(15)
                    Text("₹ 6285").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(145)
                }
                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Shoe2")).width(120).height(70)
                    Column(){}.height(20)
                    Text("Casual Shoes").fontSize(15)
                    Text("₹ 3999").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(145)
                }
              } }.tabBar('Shoes')

            TabContent() {
              Flex({justifyContent: FlexAlign.SpaceAround}) {
                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Table1")).width(120).height(70)
                    Column(){}.height(20)
                    Text("Ebony Table").fontSize(15)
                    Text("₹ 1599").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(145)
                }
                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Table2")).width(120).height(70)
                    Column(){}.height(20)
                    Text("RedWood Table").fontSize(15)
                    Text("₹ 2985").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(145)
                }
              } }.tabBar('Table')

            TabContent() {
              Flex({justifyContent: FlexAlign.SpaceAround}) {

                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Sofa1")).width(130).height(70)
                    Column(){}.height(20)
                    Text("Sitting Sofa").fontSize(15)
                    Text("₹ 16999").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(145)
                }
                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Sofa2")).width(130).height(70)
                    Column(){}.height(20)
                    Text("Circular Sofa").fontSize(15)
                    Text("₹ 29999").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(145)
                }
              } }.tabBar('Sofa')

            TabContent() {
              Flex({justifyContent: FlexAlign.SpaceAround}) {

                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Cupboard1")).width(120).height(90)
                    Column(){}.height(20)
                    Text("Wood Cupboard").fontSize(15)
                    Text("₹ 20999").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(165)
                }
                Row() {
                  Column() {
                    Column() {}.height(10)
                    Image($r("app.media.Cupboard2")).width(120).height(90)
                    Column(){}.height(20)
                    Text("Cupboard").fontSize(15)
                    Text("₹ 33999").fontSize(15).fontWeight(FontWeight.Bolder)
                  }
                  .alignItems(HorizontalAlign.Start).height(165)
                }
              } }.tabBar('Cupboard')
          }
        }
        .height(320)

      Column() {
        Row({space:45}) {
          Column() {
            Image($r("app.media.Home")).width(35).height(35)
            Text("Home").fontSize(10)
          }
          Column() {
            Image($r("app.media.Category")).width(35).height(35)
            Text("Categories").fontSize(10)
          }
          Column() {
            Image($r("app.media.Notification")).width(35).height(35)
            Text("Notification").fontSize(10)
          }
          Column() {
            Image($r("app.media.Cart")).width(35).height(35)
            Text("My Cart").fontSize(10)
          }
        }
      }
    }
    .alignItems(HorizontalAlign.Start)
    .margin(25)
  }
}