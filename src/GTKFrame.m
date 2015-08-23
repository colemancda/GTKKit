#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKFrame.h"

@implementation GTKFrame

- (id)createWidget {
	self.widget = gtk_frame_new(NULL);
	return self;
}
@end
