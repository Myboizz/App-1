package com.openclaw.automation

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.TextView
import android.widget.LinearLayout
import android.graphics.Color

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        val layout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(50, 50, 50, 50)
            
            val textView = TextView(this).apply {
                text = "OpenClaw Automation App v2\nSimple & Ready!"
                textSize = 24f
                setTextColor(Color.BLACK)
                setPadding(30, 30, 30, 30)
            }
            
            addView(textView)
        }
        
        setContentView(layout)
    }
}
