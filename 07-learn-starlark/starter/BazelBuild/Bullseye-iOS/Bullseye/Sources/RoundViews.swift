//
//  RoundViews.swift
//  Bullseye
//
//  Created by Ray Wenderlich on 10/16/20.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String

  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: General.roundedViewLength, height: General.roundedViewLength)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: General.strokeWidth)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String

  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: General.roundedViewLength, height: General.roundedViewLength)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRectTextView: View {
  var text: String

  var body: some View {
    Text(text)
      .kerning(-0.2)
      .bold()
      .font(.title3)
      .frame(width: General.roundRectViewWidth, height: General.roundRectViewHeight)
      .foregroundColor(Color("TextColor"))
      .overlay(
        RoundedRectangle(cornerRadius: General.roundRectCornerRadius)
          .stroke(lineWidth: General.strokeWidth)
          .foregroundColor(Color("ButtonStrokeColor"))
      )
  }
}

struct RoundedTextView: View {
  let text: String

  var body: some View {
    Text(text)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: General.roundedViewLength, height: General.roundedViewLength)
      .overlay(
        Circle()
          .strokeBorder(Color("LeaderboardRowColor"), lineWidth: General.strokeWidth))
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
      RoundRectTextView(text: "100")
      RoundedTextView(text: "1")
    }
  }
}

struct RoundViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
