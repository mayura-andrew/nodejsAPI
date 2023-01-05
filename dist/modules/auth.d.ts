export declare const comparePasswords: (password: any, hash: any) => Promise<boolean>;
export declare const hashPassword: (password: any) => Promise<string>;
export declare const createJWT: (user: any) => string;
export declare const protect: (req: any, res: any, next: any) => void;
