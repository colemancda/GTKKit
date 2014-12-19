#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKFrame.h>
#import <GTKKit/GTKEnumerations.h>

@interface GTKFrame (Properties)

- (OFString *)label;

- (id)label:(OFString *)label;

- (GTKWidget *)labelWidget;

- (id)labelWidget:(GTKWidget *)label;

- (id)xAlign:(float)xAlign;

- (float)xAlign;

- (id)yAlign:(float)yAlign;

- (float)yAlign;

@end
