#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>
#import <GTKKit/GTKButton+Properties.h>

@implementation GTKButton (Properties)

- (id)label:(OFString *)label {
	gtk_button_set_label (GTK_BUTTON (widget), [label UTF8String]);
	return self;
}

- (OFString *)label {
	return [NSString stringWithUTF8String: gtk_button_get_label (GTK_BUTTON (widget))];
}

- (id)reliefStyle:(GtkReliefStyle)relief {
	gtk_button_set_relief (GTK_BUTTON (widget), relief);
	return self;
}

- (GtkReliefStyle)reliefStyle {
	return gtk_button_get_relief (GTK_BUTTON (widget));
}

@end
