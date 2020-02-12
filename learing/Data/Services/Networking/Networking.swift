//
//  Networking.swift
//  learing
//
//  Created by Juan Pablo Rodriguez on 11/02/20.
//  Copyright © 2020 Sergio Bernal Reyes. All rights reserved.
//

import Foundation
import Alamofire

typealias ServerResponse<T> = (Result<T,Error>) -> ()

class Networking {
    
    static let shared = Networking()
    
    func perfomRequest<T>(url: URLConvertible, method: HTTPMethod, params: [String:Any], headers: HTTPHeaders, completition: @escaping  ServerResponse<T>) {
        //completition o handlers para manejar retorno asyncrono
        AF.request(url, method: method, parameters: params, headers: headers).response { urlResponse in
            let code = urlResponse.response?.statusCode
            switch (code){
            case 400:
                completition(.failure(<#T##Error#>))
                break;
            case 200:
                completition(.success(<#T##T#>))
                break;
            case .none:
                <#code#>
            case .some(_):
                <#code#>
            }
        }
    }
}
