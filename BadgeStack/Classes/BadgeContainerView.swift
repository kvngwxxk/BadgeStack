import UIKit
import Foundation

@IBDesignable
public class BadgeContainerView: UIView {
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        addSubview(mainStackView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    public func addBadge(_ badge: Badge) {
        if badge.isLastBadge {
            addViewToStackView(badge, isLastBadge: true)
        } else {
            addViewToStackView(badge)
        }
    }
    
    private func addViewToStackView(_ view: UIView, isLastBadge: Bool = false) {
        view.sizeToFit()
        
        if mainStackView.arrangedSubviews.isEmpty {
            addNewSubStackView()
        }
        
        guard let currentStackView = mainStackView.arrangedSubviews.last as? UIStackView else {
            return
        }
        
        currentStackView.addArrangedSubview(view)
        currentStackView.layoutIfNeeded()
        
        let stackViewWidth = currentStackView.arrangedSubviews.reduce(0, { $0 + $1.frame.width }) + CGFloat(currentStackView.arrangedSubviews.count - 1) * currentStackView.spacing
        
        if stackViewWidth > currentStackView.frame.width {
            currentStackView.removeArrangedSubview(view)
            view.removeFromSuperview()
            addDummyView(to: currentStackView)
            
            addNewSubStackView()
            addViewToStackView(view)
            
        } else if isLastBadge {
            addDummyView(to: currentStackView)
        }
    }

    
    private func addNewSubStackView() {
        let newStackView = UIStackView()
        newStackView.axis = .horizontal
        newStackView.spacing = 4
        mainStackView.addArrangedSubview(newStackView)
    }
    
    private func addDummyView(to stackView: UIStackView) {
        let dummyView = UIView()
        dummyView.backgroundColor = .clear
        stackView.addArrangedSubview(dummyView)
    }
}
