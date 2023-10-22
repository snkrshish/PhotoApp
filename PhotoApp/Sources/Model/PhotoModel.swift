import Foundation


struct PhotoModel: Hashable {
    var title: String
    var image: String?
}

extension PhotoModel {
    static let modelsArray = [
        [PhotoModel(title: "Недвание", image: "swift"),
         PhotoModel(title: "Избранные", image: "swift"),
         PhotoModel(title: "Картинки", image: "swift"),
         PhotoModel(title: "WhatsApp", image: "swift"),
         PhotoModel(title: "Instagramm", image: "swift"),
         PhotoModel(title: "Pinterest", image: "swift")],

        [PhotoModel(title: "Люди", image: "swift"),
         PhotoModel(title: "Места", image: "swift")],

        [PhotoModel(title: "Видео", image: "video"),
         PhotoModel(title: "Селфи", image: "person.crop.square"),
         PhotoModel(title: "Фото Live Photos", image: "livephoto"),
         PhotoModel(title: "Портреты", image: "cube"),
         PhotoModel(title: "Замедленно", image: "timelapse"),
         PhotoModel(title: "Серии", image: "square.stack.3d.down.right"),
         PhotoModel(title: "Снимки Экрана", image: "camera.viewfinder"),
         PhotoModel(title: "Записи Экрана", image: "record.circle"),
         PhotoModel(title: "Анимированные", image: "square.stack.3d.forward.dottedline")],

         [PhotoModel(title: "Импортированные", image: "square.and.arrow.down"),
         PhotoModel(title: "Дубликаты", image: "rectangle.on.rectangle"),
         PhotoModel(title: "Скрытые", image: "eye.slash"),
         PhotoModel(title: "Недавно удаленные", image: "trash")]
    ]
}
