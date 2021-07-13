
import SwiftUI

public struct FancyTabbar: View {
    @State var currentView = TabPage.tab1
    var tabItems: [TabItem]

    public init(tabs: [TabItem]) {
        self.tabItems = tabs
    }

    public var body : some View {

        VStack {
            ZStack {
                tabItems[self.currentView.rawValue].content
            }

            Spacer()

            HStack{

                ForEach(self.tabItems) { item in
                    TabItemView(currentView: $currentView, tab: item)
                }
            }
            .padding(.vertical,-10)
            .padding(.horizontal, 25)
            .background(Color.white)
            .animation(.spring())
        }
    }
}
