 
import UIKit

open class KSToast: UIView {

    @discardableResult
    public convenience init(_ message: String?, duration: TimeInterval = 1.0, position: ToastPosition = .center) {
        self.init(frame: UIScreen.main.bounds)
        delay(duration)
        self.makeToast(message, duration: duration, position: position)
    }

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = UIColor.clear
        show()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func show() {
        let keyWindow = UIApplication.shared.keyWindow
        keyWindow?.addSubview(self)
    }

    private func dismiss() {

        UIView.animate(withDuration: 0, animations: {
            self.alpha = 0
        }, completion: { (_) in
            self.removeFromSuperview()
        })
    }

    open func delay(_ time: Double?) {
        guard let dTime = time else {
            return
        }

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(dTime * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)) {
            self.dismiss()
        }
    }
}
