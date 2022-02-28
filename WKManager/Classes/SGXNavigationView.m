//
//  SGXNavigationView.m
//  Test
//
//  Created by sgx_02 on 2021/8/18.
//

#import "SGXNavigationView.h"

@interface SGXNavigationView ()
@property (nonatomic, strong) UILabel *titleLab;
@end

@implementation SGXNavigationView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.titleLab];
        self.titleLab.bounds = CGRectMake(0, 0, 200, 30);
        self.titleLab.center = self.center;
    }
    return self;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleLab.text = title;
}

- (UILabel *)titleLab {
    if (!_titleLab) {
        _titleLab = [[UILabel alloc] init];
        _titleLab.textColor = UIColor.blackColor;
    }
    return _titleLab;
}
@end
