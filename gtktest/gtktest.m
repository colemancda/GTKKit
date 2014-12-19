#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKKit.h>

int main (int argc, char *argv[]) {
	@autoreleasepool {
		gtk_init (&argc, &argv);
	
		GTKWindow *window = [GTKWindow new];
		[window title: @"Test Window"];
		[window requestWidth: 250 height: 50];
		[window borderWidth: 10];
		[window resizable: NO];
		[window onDestroy: ^ {
			of_log(@"Goodbye, cruel world!");
			gtk_main_quit();
		}];
	
		GTKFrame *frame = [GTKFrame new];
		[frame label: @"Hello, world!"];
	
		GTKGrid *grid = [GTKGrid new];
		[grid orientation: [Orientation vertical]];
		[grid columnsHomogeneous: YES];
		[grid borderWidth: 5];
		
		GTKEntry *entry = [GTKEntry new];
		[entry textVisible: NO];
		[entry maximumLength: 8];
	
		GTKButton *button = [GTKButton new];
		[button label: @"Click Me!"];
		[button borderWidth: 5];
		[button onClick: ^ {
		  of_log([entry stringValue]);
		}];
	
		[window addWidget: frame];
		[frame addWidget: grid];
		[grid addWidget: entry];
		[grid addWidget: button];
	
		[window position: of_point(200,200)];
		[window showAll];
	
		gtk_main();
	}
	return 0;
}
