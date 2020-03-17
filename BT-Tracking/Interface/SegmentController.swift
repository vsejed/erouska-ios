//
//  SegmentController.swift
//  BT-Tracking
//
//  Created by Lukáš Foldýna on 16/03/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import UIKit

class SegmentController: UIViewController {

    @IBOutlet private weak var segmentControl: UISegmentedControl!

    @IBOutlet private weak var leftContainerView: UIView!
    @IBOutlet private weak var rightContainerView: UIView!

    private weak var leftController: ServiceController!
    private weak var rightController: FileController!

    // MARK: - Lifecycle

    prep

    // MARK: - Actions

    @IBAction private func changeContainerAction(_ sender: Any) {
        if leftContainerView.isHidden {
            rightContainerView.isHidden = true
            leftContainerView.isHidden = false
        } else {
            rightContainerView.isHidden = false
            leftContainerView.isHidden = true
        }
    }

    @IBAction private func purgeLogs(_ sender: Any) {
        FileLogger.shared.purgeLogs()
    }

}