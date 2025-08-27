/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

//
//  ScanViewController.swift
//  Runner
//

import VisionKit

protocol ScanDelegate : AnyObject {
    func sendBase64Images(images : [String])
}

class ScanViewController: UIViewController {

    weak var delegate : ScanDelegate?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    

    func configureDocumentView() {
        let scanningDocumentVC = VNDocumentCameraViewController()
        scanningDocumentVC.delegate = self

        UIApplication.topViewController()?.present(scanningDocumentVC, animated: true, completion: nil)
    }
}

extension ScanViewController: VNDocumentCameraViewControllerDelegate {
    func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
        var imageList = [String]()
        for pageNumber in 0..<scan.pageCount {
            let image = scan.imageOfPage(at: pageNumber)
            let base64Image = image.jpegData(compressionQuality: 1)?.base64EncodedString()
            if (base64Image != nil || !base64Image!.isEmpty) {
                imageList.append(base64Image!)
            }
        }
        delegate?.sendBase64Images(images : imageList)
        controller.dismiss(animated: true)
    }
}
