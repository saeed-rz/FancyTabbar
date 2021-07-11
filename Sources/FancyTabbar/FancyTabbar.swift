
import SwiftUI

public struct FancyTabbar: View {
    @StateObject var viewRouter = ViewRouter()
    var tabItems: [TabItem]

    public init(tabs: [TabItem]) {
        self.tabItems = tabs
    }

    public var body : some View {

        VStack {
            ZStack {
                tabItems[self.viewRouter.currentPage].content
            }

            Spacer()

            HStack{

                ForEach(self.tabItems) { item in
                    TabItemView(viewRouter: self.viewRouter, tab: item, tabIndex: self.tabItems.firstIndex(where: {$0 == item}) ?? 0)
                }
            }
            .padding(.vertical,-10)
            .padding(.horizontal, 25)
            .background(Color.white)
            .animation(.spring())
        }
    }
}
