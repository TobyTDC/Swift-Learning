protocol DataProvider {
    associatedtype Object
    
    func object(atIndex index: Int) -> Object
}

protocol ConfigureableView {
    associatedtype Data
    
    func configure(with data: Data)
}

class ViewController<View: ConfigureableView, DataSource: DataProvider> where View.Data == DataSource.Object {
    let view: View
    let data: DataSource
    
    init(view: View, data: DataSource) {
        self.view = view
        self.data = data
    }
    
    func start() {
        let object = data.object(atIndex: 0)
        view.configure(with: object)
    }
}

struct StringDataProvider: DataProvider {
    
    let data = ["someValue", "anotherValue"]
    
    func object(atIndex index: Int) -> String {
        return data[index]
    }
}

struct IntView: ConfigureableView {
    
    func configure(with data: Int) {
        //
    }
}

struct StringView: ConfigureableView {
    func configure(with data: String) {
        //
    }
}

let controller = ViewController(view: StringView(), data: StringDataProvider())
