#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKFrame+Properties.h>

@implementation GTKFrame (Properties)

- (OFString *)label {
	return [NSString stringWithUTF8String: gtk_frame_get_label (GTK_FRAME (self.widget))];
}

- (id)label:(OFString *)label {
	gtk_frame_set_label (GTK_FRAME (self.widget), [label UTF8String]);
	return self;
}

- (GTKWidget *)labelWidget {
	return [GTKWidget widgetFromGtkWidget: gtk_frame_get_label_widget (GTK_FRAME (self.widget))];
}

- (id)labelWidget:(GTKWidget *)labelWidget {
	gtk_frame_set_label_widget (GTK_FRAME (self.widget), [labelWidget widget]);
	return self;
}

- (id)xAlign:(float)xAlign {
	g_object_set (G_OBJECT (self.widget), "label-xalign", xAlign, NULL); 
	return self;
}

- (float)xAlign {
	float x;
	g_object_get (G_OBJECT (self.widget), "label-xalign", &x, NULL);
	return x;
}

- (id)yAlign:(float)yAlign {
	g_object_set (G_OBJECT (self.widget), "label-yalign", yAlign, NULL); 
	return self;
}

- (float)yAlign {
	float y;
	g_object_get (G_OBJECT (self.widget), "label-yalign", &y, NULL);
	return y;
}

@end
