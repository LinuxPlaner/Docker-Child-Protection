import { List } from "immutable";
import NAMESPACE from "./namespace";

export const getMessages = state => state.getIn([NAMESPACE], List([]));
