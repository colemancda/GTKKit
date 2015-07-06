#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget.h>

@interface GTKWidget (Properties)

- (id)name:(NSString *)name;

- (NSString *)name;

- (bool)isFocus;

- (id)sensitive:(bool)sensitive;

- (bool)sensitive;

- (bool)effectiveSensitivity;

- (double)opacity;

- (id)opacity:(double)opacity;

@end
