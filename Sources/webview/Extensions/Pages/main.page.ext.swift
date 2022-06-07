import ScadeKit

extension MainPageAdapter {
  var webView: SCDWidgetsWebView {
    return self.page?.getWidgetByName("webView") as! SCDWidgetsWebView
  }

  var webView1: SCDWidgetsWebView {
    return self.page?.getWidgetByName("webView1") as! SCDWidgetsWebView
  }

  var webView2: SCDWidgetsWebView {
    return self.page?.getWidgetByName("webView2") as! SCDWidgetsWebView
  }
}