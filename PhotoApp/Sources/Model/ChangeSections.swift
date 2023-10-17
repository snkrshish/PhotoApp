import UIKit

enum ChangeSections {
    case myAlbums([PhotoModel])
    case peapleAndPlaces([PhotoModel])
    case mediaType([PhotoModel])
    case utilites([PhotoModel])


    var title: String {
        switch self {
        case .myAlbums(_):
            return "My Albums"
        case .peapleAndPlaces(_):
            return "People and Places"
        case .mediaType(_):
            return "Media Types"
        case .utilites(_):
            return "Utilites"
        }
    }
}
