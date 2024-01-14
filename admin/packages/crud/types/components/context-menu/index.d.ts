/// <reference types="../index" />
declare const ClContextMenu: import("vue").DefineComponent<{
    show: BooleanConstructor;
    options: {
        type: ObjectConstructor;
        default: () => {};
    };
    event: {
        type: ObjectConstructor;
        default: () => {};
    };
}, () => false | JSX.Element, unknown, {}, {}, import("vue").ComponentOptionsMixin, import("vue").ComponentOptionsMixin, {}, string, import("vue").VNodeProps & import("vue").AllowedComponentProps & import("vue").ComponentCustomProps, Readonly<import("vue").ExtractPropTypes<{
    show: BooleanConstructor;
    options: {
        type: ObjectConstructor;
        default: () => {};
    };
    event: {
        type: ObjectConstructor;
        default: () => {};
    };
}>>, {
    options: Record<string, any>;
    show: boolean;
    event: Record<string, any>;
}, {}>;
export declare const ContextMenu: {
    open(event: any, options: ClContextMenu.Options): void;
};
export default ClContextMenu;
