import { expect } from "chai";
import { fromJS } from "immutable";

import { setupMountedComponent } from "../../../test";
import { DashboardChip } from "../dashboard-chip";
import { Option } from "../../record-form/records";
import { LOOKUPS } from "../../../config";
import { DASHBOARD_NAMES } from "../../pages/dashboard";

import BadgedIndicator from "./component";

describe("<BadgedIndicator />", () => {
  let component;
  const props = {
    data: fromJS({
      name: DASHBOARD_NAMES.case_risk,
      stats: {
        high: { count: 2, query: [] },
        medium: { count: 1, query: [] },
        none: { count: 0, query: [] }
      }
    }),
    lookup: LOOKUPS.risk_level
  };

  const initialState = fromJS({
    forms: {
      options: {
        lookups: [
          {
            unique_id: LOOKUPS.risk_level,
            values: [
              {
                id: "high",
                display_text: { en: "High", es: "" }
              },
              {
                id: "medium",
                display_text: { en: "Medium", es: "" }
              },
              {
                id: "low",
                display_text: { en: "Low", es: "" }
              },
              {
                id: "no_risk",
                display_text: { en: "No Risk", es: "" }
              }
            ]
          }
        ]
      }
    }
  });

  beforeEach(() => {
    ({ component } = setupMountedComponent(
      BadgedIndicator,
      props,
      initialState
    ));
  });

  it("renders a BadgedIndicator with a DashboardChip />", () => {
    debugger;
    expect(component.find(BadgedIndicator)).to.have.lengthOf(1);
    expect(component.find(DashboardChip)).to.have.lengthOf(4);
  });
});
