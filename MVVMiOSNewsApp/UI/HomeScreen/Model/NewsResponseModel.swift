//
//  NewsModel.swift
//  MVVMiOSNewsApp
//
//  Created by Soner Karaevli on 22.04.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let newsModel = try? newJSONDecoder().decode(NewsResponseModel.self, from: jsonData)

import Foundation

// MARK: - NewsResponseModel
struct NewsResponseModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author, title, articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
    let content: String

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: Int
    let name: String
}
