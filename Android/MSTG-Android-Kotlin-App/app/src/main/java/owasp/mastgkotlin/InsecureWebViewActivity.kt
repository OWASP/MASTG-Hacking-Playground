package owasp.mastgkotlin

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.webkit.WebChromeClient
import android.webkit.WebSettings
import android.webkit.WebView
import org.jetbrains.anko.find
import owasp.mastgkotlin.util.JS_Interface
import owasp.mastgkotlin.R

class InsecureWebViewActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_insecure_web_view)

        val file_path = "file:///android_asset/unsafe_content.html"
        val jsInterface = JS_Interface(this)

        val wv_insecureWebView = find<WebView>(R.id.webview_insecure)
        wv_insecureWebView.settings.javaScriptEnabled = true
        wv_insecureWebView.settings.allowFileAccessFromFileURLs = true
        wv_insecureWebView.isVerticalScrollBarEnabled = true
        wv_insecureWebView.isHorizontalScrollBarEnabled = true
        wv_insecureWebView.settings.useWideViewPort = false
        wv_insecureWebView.settings.cacheMode = WebSettings.LOAD_CACHE_ELSE_NETWORK

        wv_insecureWebView.webChromeClient = WebChromeClient()

        // adding the JS interface
        wv_insecureWebView.addJavascriptInterface(jsInterface,"Android")

        // Javascript execution
        wv_insecureWebView.loadUrl(file_path)

        Log.d("Checkpoint-jsEnabled","true")
    }
}
