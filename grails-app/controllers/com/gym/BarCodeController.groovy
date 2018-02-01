package com.gym

import org.krysalis.barcode4j.HumanReadablePlacement
import org.krysalis.barcode4j.impl.code39.Code39Bean
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider
import org.krysalis.barcode4j.tools.UnitConv

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

class BarCodeController {

    def index() {
        println("en el controller")

    }

    def showBarcode(String barcode) {
        println("en el showbarcode: " + barcode)
        String value = '0123456789'
        BufferedImage barcodeImg = null
        Code39Bean bean = new Code39Bean()
        final int dpi = 600
//        bean.setModuleWidth(UnitConv.in2mm(0.5f/dpi))
        bean.doQuietZone(true)

        bean.setBarHeight(1)
        bean.setMsgPosition(HumanReadablePlacement.HRP_NONE)
        try {
            BitmapCanvasProvider provider = new BitmapCanvasProvider(dpi, BufferedImage.TYPE_BYTE_GRAY, true, 0)
            bean.generateBarcode(provider, value)
            provider.finish()
            barcodeImg = provider.getBufferedImage()
        } catch (Exception e) {
            e.printStackTrace()
        }
        response.setContentType("image/png");
        ImageIO.write(barcodeImg, "png", response.getOutputStream());
    }
}