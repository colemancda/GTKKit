#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKFrame.h>

@implementation GTKFrame

- (id)createWidget {
	widget = gtk_frame_new(NULL);
	return self;
}
@end
