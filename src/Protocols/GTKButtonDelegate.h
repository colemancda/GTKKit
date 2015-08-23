@class GTKButton;

@protocol GTKButtonDelegate <OFObject>

@optional

-(void)buttonClicked:(GTKButton *)sender;

@end