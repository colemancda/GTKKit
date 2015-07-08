#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKFrame.h>
#import <GTKKit/GTKEnumerations.h>

@interface GTKFrame (Properties)

@property (assign) OFString *label;
@property (strong) GTKWidget *labelWidget;
@property (assign) float xAlign;
@property (assign) float yAlign;

@end
