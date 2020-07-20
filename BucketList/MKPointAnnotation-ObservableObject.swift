//
//  MKPointAnnotation-ObservableObject.swift
//  BucketList
//
//  Created by KazukiNakano on 2020/07/21.
//  Copyright © 2020 dmb. All rights reserved.
//

import MapKit

extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown value"
        }

        set {
            title = newValue
        }
    }

    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown value"
        }

        set {
            subtitle = newValue
        }
    }
}
