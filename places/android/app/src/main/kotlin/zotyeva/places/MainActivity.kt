package zotyeva.places

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import com.yandex.mapkit.MapKitFactory
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("e7507bf7-9b60-42bf-8647-5e827c276062")
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
