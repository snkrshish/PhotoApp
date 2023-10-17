import Foundation


struct PhotoModel: Hashable {
    var title: String
    var image: String?
}

extension PhotoModel {
    static let modelsArray = [
        [PhotoModel(title: "Недвание", image: ""),
         PhotoModel(title: "Избранные", image: ""),
         PhotoModel(title: "Картинки", image: ""),
         PhotoModel(title: "WhatsApp", image: ""),
         PhotoModel(title: "Instagramm", image: ""),
         PhotoModel(title: "Pinterest", image: "")],

        [PhotoModel(title: "Люди", image: ""),
         PhotoModel(title: "Места", image: "")],

        [PhotoModel(title: "Видео", image: "video"),
         PhotoModel(title: "Селфи", image: "person.crop.square"),
         PhotoModel(title: "Фото Live Photos", image: "livephoto"),
         PhotoModel(title: "Портреты", image: "cube"),
         PhotoModel(title: "Замедленно", image: "timelapse"),
         PhotoModel(title: "Серии", image: "square.stack.3d.down.right"),
         PhotoModel(title: "Снимки Экрана", image: "camera.viewfinder"),
         PhotoModel(title: "Записи Экрана", image: "record"),
         PhotoModel(title: "Анимированные", image: "square.stack.3d.forward.dottedline")],

         [PhotoModel(title: "Импортированные", image: "square.and.arrow.down"),
         PhotoModel(title: "Дубликаты", image: "rectangle.on.rectangle"),
         PhotoModel(title: "Скрытые", image: "eye.slash"),
         PhotoModel(title: "Недавно удаленные", image: "trash")]
    ]
}
