//
//  TFCollectionReusableViewItemProtocol.h
//
//  Created by ZhangJun on 2018/10/25.
//  Copyright © 2018 JingLing. All rights reserved.
//

#import <UIKit/UIKit.h>



typedef void(^CellResponseBlock)(NSString *identifier, id object);

@protocol TFCollectionReusableViewItemProtocol <NSObject>

@property (nonatomic, strong) Class cellClass;
@property (nonatomic, copy, nullable) NSString *cellType;
@property (nonatomic, copy) NSValue *cellSize;

@property (nonatomic, weak) id cellResponse;
@property(nonatomic,copy) CellResponseBlock cellResponseBlock;

@property(nonatomic,strong) id model;

@property (nonatomic, assign) BOOL useNib;
@property(nonatomic, copy) NSString *accessibilityIdentifier;

/// 关联的cell
///
/// 当它附值给cell是，会与对应的cell进行关联。
/// 仅且仅当 `cell.object == cellItem && cellItem.associatedCell == cell`时，cellItem才关联了cell。
/// 因为cellItem关联的cell可能已经被其他cellItem关联了。
@property (nonatomic, weak) UICollectionViewCell *associatedCell;

@end


