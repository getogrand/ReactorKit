//
//  ObservableType+pairwise.swift
//  ReactorKit
//
//  Created by WonyoungJu on 2020/09/04.
//

import RxSwift

extension ObservableType {
  public func pairwise() -> Observable<(Element, Element)> {
    return scan([]) { (acc, item) in Array((acc + [item]).suffix(2)) }
      .filter { $0.count == 2 }
      .map { ($0[0], $0[1]) }
  }
}
