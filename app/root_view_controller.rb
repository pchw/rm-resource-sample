class RootViewController < UIViewController
    def viewDidLoad
        @label = self.view.viewWithTag 1
        @imageView = self.view.viewWithTag 2

        path = NSBundle.mainBundle.resourcePath.stringByAppendingPathComponent "test.txt"
        str = NSString.stringWithContentsOfFile path

        @label.text = str

        @imageView.image = UIImage.imageNamed "test.png"
    end
end