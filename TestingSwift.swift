//
//  TestingSwift.swift
//  careertimes
//
//  Created by Alex on 13/11/2018.
//  Copyright © 2018 hket. All rights reserved.
//

import Foundation


@objc class SwiftClass : NSObject{
     var stickerPack: StickerPack!
    @objc func sendWhatsapp() -> Void{
        
        do {
            try StickerPackManager.fetchStickerPacks(fromJSON: StickerPackManager.stickersJSON(contentsOfFile: "sticker_packs")) { stickerPacks in
                if stickerPacks.count == 1 {
                    self.stickerPack = stickerPacks[0]
                    self.stickerPack.sendToWhatsApp { completed in
                    }
                }
            }
        } catch StickerPackError.fileNotFound {
            fatalError("sticker_packs.wasticker not found.")
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}

