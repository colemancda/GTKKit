#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKWidget.h"

@interface GTKWidget (Actions)

- (id)show;

- (id)showAll;

- (id)destroy;

- (id)hide;

- (bool)activate;

- (id)grabFocus;

- (id)grabDefault;

@end
