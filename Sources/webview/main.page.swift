import ScadeKit

class MainPageAdapter: SCDLatticePageAdapter {

  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)

    webView.load("https://www.youtube.com/")
    webView1.load("https://www.bensound.com/")
    webView2.load("https://www.google.com/")

    webView.onLoaded.append(
      SCDWidgetsLoadEventHandler { event in
        print("OnLoaded: \(String(describing: event?.url))")
      }
    )
    webView.onLoadFailed.append(
      SCDWidgetsLoadFailedEventHandler { event in
        print("NonLoaded: \(String(describing: event?.url))")
        print("NonLoaded: \(String(describing: event?.message))")
      }
    )

    webView1.onShouldLoad.append(
      SCDWidgetsShouldLoadEventHandler { event in
        print(String(describing: event?.url))
        return event!.url.hasSuffix("tube")
          || event!.url.contains("bensound")
      }
    )
  }
}

